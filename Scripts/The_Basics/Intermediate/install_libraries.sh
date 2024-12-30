#!/bin/bash

# Update and upgrade system packages
sudo apt-get update
sudo apt-get upgrade -y

# Install Python and pip if not already installed
sudo apt-get install -y python3 python3-pip

# Install the required Python libraries from GitHub or PyPI

# PyTorch ( latest stable version from PyPI)
pip install --upgrade torch

# Install Hugging Face libraries (from GitHub)

# Transformers
pip install --upgrade git+https://github.com/huggingface/transformers

# Datasets
pip install --upgrade git+https://github.com/huggingface/datasets

# Accelerate
pip install --upgrade git+https://github.com/huggingface/accelerate

# PEFT
pip install --upgrade git+https://github.com/huggingface/peft

# TRL 
pip install --upgrade git+https://github.com/huggingface/trl

# Hugging Face Hub
pip install --upgrade huggingface_hub

# BitsAndBytes 
pip install --upgrade git+https://github.com/TimDettmers/bitsandbytes

# Matplotlib 
pip install --upgrade matplotlib

# SciPy 
pip install --upgrade git+https://github.com/scipy/scipy

# Verify installation
python3 -c "import torch; import numpy; import transformers; import datasets; import accelerate; import peft; import trl; import huggingface_hub; import bitsandbytes; import matplotlib; import scipy"
