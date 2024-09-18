#!/bin/bash

# Update and upgrade system packages
sudo apt-get update
sudo apt-get upgrade -y

# Install Python and pip if not already installed
sudo apt-get install -y python3 python3-pip

# Install the required Python libraries from GitHub or PyPI

# PyTorch (install latest stable version from PyPI, GitHub install not typically used)
pip install --upgrade torch

# Install Hugging Face libraries (from GitHub for latest features)

# Transformers
pip install --upgrade git+https://github.com/huggingface/transformers

# Datasets
pip install --upgrade git+https://github.com/huggingface/datasets

# Accelerate
pip install --upgrade git+https://github.com/huggingface/accelerate

# PEFT (if hosted on GitHub; adjust URL if necessary)
pip install --upgrade git+https://github.com/huggingface/peft

# TRL (if hosted on GitHub; adjust URL if necessary)
pip install --upgrade git+https://github.com/huggingface/trl

# Hugging Face Hub
pip install --upgrade huggingface_hub

# BitsAndBytes (official GitHub URL)
pip install --upgrade git+https://github.com/TimDettmers/bitsandbytes

# Matplotlib (install latest stable version from PyPI)
pip install --upgrade matplotlib

# SciPy (official GitHub URL for latest version)
pip install --upgrade git+https://github.com/scipy/scipy

# Verify installation
python3 -c "import torch; import numpy; import transformers; import datasets; import accelerate; import peft; import trl; import huggingface_hub; import bitsandbytes; import matplotlib; import scipy"
