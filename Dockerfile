FROM fedora:28

RUN mkdir -p /home/packages/fedora28/option{1,2}/tensorflow && \
    cd /home/packages/fedora28/option1/tensorflow && \
    curl -O https://files.pythonhosted.org/packages/22/c6/d08f7c549330c2acc1b18b5c1f0f8d9d2af92f54d56861f331f372731671/tensorflow-1.8.0-cp36-cp36m-manylinux1_x86_64.whl && \
    curl -O https://files.pythonhosted.org/packages/66/83/35c3f53129dfc80d65ebbe07ef0575263c3c05cc37f8c713674dcedcea6f/tensorflow-1.7.1-cp36-cp36m-manylinux1_x86_64.whl && \
    curl -O https://files.pythonhosted.org/packages/38/4a/42ba8d00a50a9fafc88dd5935246ecc64ffe1f6a0258ef535ffb9652140b/tensorflow-1.7.0-cp36-cp36m-manylinux1_x86_64.whl && \
    cd /home/packages/fedora28/option2/tensorflow && \
    curl -O https://files.pythonhosted.org/packages/9d/e0/d371c595fa93a709a88a1d6127ca8a5e145e42e379c9ef9490407bccea44/tensorflow-1.5.1-cp36-cp36m-manylinux1_x86_64.whl && \
    curl -O https://files.pythonhosted.org/packages/8c/b3/dba1a3e681a56d5ad63d3a1aa02b52294bdb3c6373245a67c1492a90cb62/tensorflow-1.4.1-cp36-cp36m-manylinux1_x86_64.whl && \
    chmod -R o+r /home/packages

WORKDIR /home/packages
ENTRYPOINT ["python3"]
CMD ["-m", "http.server", "8000"]

