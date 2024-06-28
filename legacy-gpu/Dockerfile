FROM nvidia/cuda:12.4.1-cudnn-runtime-ubuntu20.04

ENV DEBIAN_FRONTEND=noninteractive

# install python 3.10 and curl
RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt update && \
    apt install -y python3.10 python3.10-venv python3.10-dev curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install pip for python 3.10
RUN curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10

# install dependencies
RUN pip install --upgrade pip
RUN pip install \
                Cython==3.0.10 \
                numpy==1.26.4 \
                matplotlib==3.9.0 \
                seaborn==0.13.2 \
                scipy==1.14.0 \
                scikit-learn==1.5.0 \
                pandas==2.2.2 \
                PyYAML==6.0.1 \
                imutils==0.5.4 \
                opencv-python==4.10.0.84 \
                torch==2.3.1 \
                tensorflow==2.16.1 \
                tqdm==4.66.4 \
                psutil==6.0.0 \
                h5py==3.11.0 \
                jupyter==1.0.0 &&\
                rm -rf ~/.cache/pip

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /app/codalab
