FROM nvcr.io/nvidia/pytorch:23.04-py3

RUN apt-get update && \
    apt-get install -y \
    libprotobuf-dev \
    protobuf-compiler

RUN git clone --recursive https://github.com/onnx/onnx.git

RUN cd onnx && \
    mkdir build && cd build \
    && cmake .. \
    && make \
    && make install