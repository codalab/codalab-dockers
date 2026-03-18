# Python requirements
FROM debian:10.0

# Install anaconda
RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1 \
    git mercurial subversion
RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/archive/Anaconda3-2019.07-Linux-x86_64.sh && \
    /bin/bash /Anaconda3-2019.07-Linux-x86_64.sh -b -p /opt/conda && \
    rm /Anaconda3-2019.07-Linux-x86_64.sh

RUN apt-get install -y curl grep sed dpkg && \
    TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o "/v.*\"" | sed 's:^..\(.*\).$:\1:'` && \
    curl -L "https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb" > tini.deb && \
    dpkg -i tini.deb && \
    rm tini.deb && \
    apt-get clean

ENV PATH /opt/conda/bin:$PATH

# http://bugs.python.org/issue19846
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that's not OK.
ENV LANG C.UTF-8

# C#, R, etc. requirements
RUN apt-get update && apt-get install -y --fix-missing r-base mono-runtime libgomp1 libc6

# Fix for 'xgboost' missing
RUN conda install libgcc
RUN conda install -c conda-forge tensorflow

RUN echo "deb http://http.us.debian.org/debian/ testing non-free contrib main" > /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y -t testing install python3.7 python3-pip

RUN pip3 install \
        theano==1.0.0 \
        Cython==0.29.13 \
        numpy==1.17.2 \
        scipy==1.3.1 \
        scikit-learn==0.21.3 \
        pandas==0.25.0 \
        pyyaml==5.1 \
        imutils==0.5.3
