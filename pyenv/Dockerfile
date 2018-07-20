FROM debian:jessie

# Install pyenv
ENV PYENV_ROOT="/.pyenv" \
    PATH="/.pyenv/bin:/.pyenv/shims:$PATH"

RUN apt-get update && \
    apt-get install -y --no-install-recommends git ca-certificates curl bzip2 && \
    curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pyenv install anaconda2-2.5.0 && \
    pyenv install anaconda3-2.5.0


# Install deps to each version
RUN PYENV_VERSION=anaconda2-2.5.0 pip install category_encoders && \
    PYENV_VERSION=anaconda3-2.5.0 pip install category_encoders


# By default run with py27
RUN pyenv global anaconda2-2.5.0

# To select your python version, do it like so:
#    PYENV_VERSION=anaconda3-2.5.0 python yourscript.py $input $output
#
# Here is a list of available versions:
#    https://github.com/pyenv/pyenv/tree/master/plugins/python-build/share/python-build