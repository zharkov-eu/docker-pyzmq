FROM alpine:3.7

ENV PYTHON3_VERSION="3.6.3-r9"
ENV PYZMQ_VERSION="17.0.0"

RUN apk add --no-cache g++ python3=${PYTHON3_VERSION} python3-dev=${PYTHON3_VERSION} zeromq-dev && \
    python3 -m ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install pyzmq==${PYZMQ_VERSION} --install-option="--zmq=/usr/lib/" && \
    apk del g++ python3-dev
