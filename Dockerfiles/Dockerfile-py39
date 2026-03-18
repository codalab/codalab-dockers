# Python requirements
FROM debian:11.0

# Install anaconda
RUN apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates \
    libglib2.0-0 libxext6 libsm6 libxrender1 \
    git mercurial subversion
RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/archive/Anaconda3-2022.05-Linux-x86_64.sh && \
    /bin/bash /Anaconda3-2022.05-Linux-x86_64.sh -b -p /opt/conda && \
    rm /Anaconda3-2022.05-Linux-x86_64.sh

RUN apt-get install -y curl grep sed dpkg tini

ENV PATH /opt/conda/bin:$PATH

# C#, R, etc. requirements
RUN apt-get update && apt-get install -y --fix-missing r-base mono-runtime libgomp1 libc6

# Fix for 'xgboost' missing
RUN conda install libgcc
#RUN conda install -c conda-forge tensorflow

RUN echo "deb http://http.us.debian.org/debian/ testing non-free contrib main" > /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y -t testing install python3.9 python3-pip

RUN pip3 install \
        theano==1.0.5 \
        Cython==0.29.30 \
        numpy==1.22.4 \
        scipy==1.8.1 \
        scikit-learn==1.1.1 \
        pandas==1.4.2 \
        pyyaml==6.0 \
        imutils==0.5.4 \
        numba==0.55.2 \
        tensorflow==2.9.1
