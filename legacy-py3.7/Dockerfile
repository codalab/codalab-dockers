FROM continuumio/anaconda3

RUN apt-get update && apt-get install -y libgtk2.0-dev python-pip && \
    rm -rf /var/lib/apt/lists/* && \
    /opt/conda/bin/conda install numpy pandas scikit-learn matplotlib seaborn pyyaml h5py keras theano Cython scipy -y && \
    /opt/conda/bin/conda install -c conda-forge tensorflow && \
    /opt/conda/bin/conda upgrade dask && \
    pip install update && \
    pip install imutils

