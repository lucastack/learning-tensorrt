FROM nvcr.io/nvidia/pytorch:23.04-py3

RUN apt-get update && \
    apt-get install -y \
    libprotobuf-dev \
    protobuf-compiler

RUN pip3 install --upgrade pip
COPY requirements.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt

RUN git clone --recursive https://github.com/onnx/onnx.git

RUN cd onnx && \
    mkdir build && cd build \
    && cmake .. \
    && make \
    && make install