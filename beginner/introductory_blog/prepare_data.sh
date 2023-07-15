#!/bin/bash

python preparedata.py --input_image images/0.tif --input_tensor test_data_set_0/input_0.pb --output_tensor test_data_set_0/output_0.pb  
python preparedata.py --input_image images/1.tif --input_tensor test_data_set_1/input_1.pb --output_tensor test_data_set_1/output_1.pb  
python preparedata.py --input_image images/2.tif --input_tensor test_data_set_2/input_2.pb --output_tensor test_data_set_2/output_2.pb  