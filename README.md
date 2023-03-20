# Data2Vec 2.0

Data2Vec is self-supervised highly-efficient general framework to generate representations for vision, speech and text. This repository contains ready-to train [data2vec](https://github.com/facebookresearch/fairseq/tree/main/examples/data2vec) ([arXiv](https://arxiv.org/abs/2202.03555)) implementation containing helper scripts to load, process & train the data.


## Run in a Free GPU powered Gradient Notebook
[![Gradient](https://assets.paperspace.io/img/gradient-badge.svg)](https://console.paperspace.com/github/ashutosh1919/data2vec-pytorch?machine=Free-GPU)


## Setup

The file `installations.sh` contains all the necessary code to install required things. Note that your system must have CUDA to train data2vec. Also, you may require different version of `torch` based on the version of CUDA. If you are running this on [Paperspace](https://www.paperspace.com/), then the default version of CUDA is 11.6 which is compatible with this code. If you are running it somewhere else, please check your CUDA version using `nvcc --version`. If the version differs from ours, you may want to change versions of PyTorch libraries in the first line of `installations.sh` by looking at [compatibility table](https://github.com/pytorch/pytorch/wiki/PyTorch-Versions).

To install all the dependencies, run below command:

```
bash installations.sh
```