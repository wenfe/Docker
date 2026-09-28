FROM docker.io/library/python:3.14

LABEL maintainer="feng48"

RUN pip install --no-cache-dir ipython numpy scipy pandas scikit-learn jupyterlab

RUN useradd -ms /bin/bash jupyter

USER jupyter
WORKDIR /home/jupyter

EXPOSE 8888

LABEL org.opencontainers.image.source="https://github.com/wenfe/Docker"

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0"]
# ENTRYPOINT jupyter lab --ip=0.0.0.0
