# Description
This folder contains my code from [this](https://developer.nvidia.com/blog/speeding-up-deep-learning-inference-using-tensorrt-updated/) Nvidia's blog post

# Build Image

`docker build -t intro_image .`

# Run the code 

1. Cd into this folder 

2. Run Container
    
    `docker run --rm --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 -it -v ./:/workspace/ intro_image`

    Note: The following steps will be run inside that container

3. Export model to onnx

    `python model_parser.py`

4. Prepare .pb files

    `bash prepare_data.sh`

5. Import the ONNX model into TensorRT, generate the engine, and perform inference 
    
    `simpleOnnx unet.onnx fp16 test_data_set_0/input_0.pb`


