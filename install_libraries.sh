#!/bin/bash

# Update and upgrade system packages
sudo apt-get update
sudo apt-get upgrade -y

# Install Python and pip if not already installed
sudo apt-get install -y python3 python3-pip

# Install the required Python libraries
pip install torch numpy transformers datasets accelerate peft trl huggingface_hub bitsandbytes matplotlib scipy

# Verify installation
python3 -c "import torch; import numpy; import transformers; import datasets; import accelerate; import peft; import trl; import huggingface_hub; import bitsandbytes; import matplotlib; import scipy"
