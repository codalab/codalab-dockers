# CPU images

Base CPU images for CodaLab and Codabench.

### Legacy Python 3.7

Dockerfile: [Dockerfile-py37](Dockerfile-py37)

DockerHub image: `codalab/codalab-legacy:py37`

Image containing Python 3.7 (with Anaconda 3-2019.07 libraries), R, C#

Python librairies: theano, Cython, numpy, scipy, scikit-learn, pandas, pyyaml, imutils and tensorflow.

The associated DockerHub image is `codalab/codalab-legacy:py37`

*NOTE: You have to run your script with `python3` not `python`*


### Legacy Python 3.9

Dockerfile: [Dockerfile-py39](Dockerfile-py39)

DockerHub image: `codalab/codalab-legacy:py39`

Image containing Python 3.9 (with Anaconda 3-2022.05 libraries), R, C#

Python librairies: theano, Cython, numpy, scipy, scikit-learn, pandas, pyyaml, imutils and tensorflow.

*NOTE: You have to run your script with `python3` not `python`*



### Legacy Python 3.12

Dockerfile: [Dockerfile-py312](Dockerfile-py312)

DockerHub image: `codalab/codalab-legacy:py312`

Image containing Python 3.12, R, C#
Python libraries: Cython, numpy, scipy, scikit-learn, pandas, pyyaml and imutils.


# GPU images

Docker images for submissions sent on GPU workers

### Legacy GPU Python 3

Dockerfile: [Dockerfile-gpu](Dockerfile-gpu)

DockerHub image: `codalab/codalab-legacy:gpu`

* Based on `tensorflow/tensorflow:latest-gpu-py3`
* Common Python librairies


### Legacy GPU Python 3.10

Dockerfile: [Dockerfile-gpu310](Dockerfile-gpu310)

DockerHub image: `codalab/codalab-legacy:gpu310`

* Based on `nvidia/cuda:12.4.1-cudnn-runtime-ubuntu20.04`
* Common Python librairies

