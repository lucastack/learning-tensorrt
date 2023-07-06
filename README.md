# learning-tensorrt

1. Clone this repo

2. Pull image

    `docker pull nvcr.io/nvidia/pytorch:23.04-py3`

3. Run container

    `docker run --rm --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -it -v ./learning-tensorrt:/workspace/ nvcr.io/nvidia/pytorch:23.04-py3`


