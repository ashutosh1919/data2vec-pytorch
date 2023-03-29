# Data2Vec 2.0

[Check out the original repo!](https://github.com/ashutosh1919/data2vec-pytorch)

Data2Vec is self-supervised highly-efficient general framework to generate representations for vision, speech and text. This repository contains ready-to train [data2vec](https://github.com/facebookresearch/fairseq/tree/main/examples/data2vec) ([arXiv](https://arxiv.org/abs/2202.03555)) implementation containing helper scripts to load, process & train the data.

If you want to understand Data2Vec in detail, check out [this blog on Paperspace](https://blog.paperspace.com/data2vec/).

## Run in a Free GPU powered Gradient Notebook

[![Gradient](https://assets.paperspace.io/img/gradient-badge.svg)](https://console.paperspace.com/github/gradient-ai/data2vec-pytorch?machine=Free-GPU)

## Setup

The file `installations.sh` contains all the necessary code to install required things. Note that your system must have CUDA to train data2vec. Also, you may require different version of `torch` based on the version of CUDA. If you are running this on [Paperspace](https://www.paperspace.com/), then the default version of CUDA is 11.6 which is compatible with this code. If you are running it somewhere else, please check your CUDA version using `nvcc --version`. If the version differs from ours, you may want to change versions of PyTorch libraries in the first line of `installations.sh` by looking at [compatibility table](https://github.com/pytorch/pytorch/wiki/PyTorch-Versions).

To install all the dependencies, run below command:

```bash
bash installations.sh
```

## Downloading datasets & Start training

`datasets` directory in this repo contains necessary scripts to download the data and make it ready for training. Currently, this repository supports downloading 3 types of datasets [ImageNet](https://www.image-net.org/) (Vision), [LibriSpeech](http://www.openslr.org/12) (Speech), and [OpenWebText](https://huggingface.co/datasets/openwebtext) (Text).

We have already setup bash scripts for you which will automatically download the dataset for you and will start the training. `scripts` directory in this repo contains these bash scripts corresponding to few of many tasks which data2vec supports. You can look at one of these task bash scripts to understand what it does.

These bash scripts are compatible for Paperspace workspace. But if you are running it elsewhere, then you will need to replace base path of the paths mentioned in these task files.

To download data files and start training, you can execute below commands corresponding to the task you want to run it for:

```bash
# Downloads ImageNet and starts training data2vec_multi with it.
bash scripts/train_data2vec_multi_image.sh

# Downloads OpenWebText and starts training data2vec_multi with it.
bash scripts/train_data2vec_multi_text.sh

# Downloads LibriSpeech and starts training data2vec_multi with it.
bash scripts/train_data2vec_multi_speech.sh
```

Note that you may want to change some of the arguments in these task scripts based on your system. Since we have single GPU, the arg `distributed_training.distributed_world_size=1` for us which you can change based on your requirement.

## Original Code

`data2vec` directory contains the original code taken from [fairseq](https://github.com/facebookresearch/fairseq/tree/main/examples/data2vec) repository. The code present in this directory is exactly same as the original code. We have only made changes in some of the config files corresponding to the tasks.

## Reference

data2vec: A General Framework for Self-supervised Learning in Speech, Vision and Language -- https://arxiv.org/abs/2202.03555

```
@article{DBLP:journals/corr/abs-2202-03555,
  author    = {Alexei Baevski and
               Wei{-}Ning Hsu and
               Qiantong Xu and
               Arun Babu and
               Jiatao Gu and
               Michael Auli},
  title     = {data2vec: {A} General Framework for Self-supervised Learning in Speech,
               Vision and Language},
  journal   = {CoRR},
  volume    = {abs/2202.03555},
  year      = {2022}
}
```

Efficient Self-supervised Learning with Contextualized Target Representations for Vision, Speech and Language -- https://arxiv.org/abs/2212.07525

```
@misc{baevski2022efficient,
      title={Efficient Self-supervised Learning with Contextualized Target Representations for Vision, Speech and Language},
      author={Alexei Baevski and Arun Babu and Wei-Ning Hsu and Michael Auli},
      year={2022},
      eprint={2212.07525},
      archivePrefix={arXiv},
      primaryClass={cs.LG}
}
```

## License

See the [LICENSE](LICENSE) file.
