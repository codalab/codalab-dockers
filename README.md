# Codalab submission images

This repo contains many images that submissions to codalab use for processing

## Available tags

| tag   | description                                                     |
|-------|-----------------------------------------------------------------|
| codalab/codalab-legacy:py39  | basic image, including numpy, sklearn, etc. -- python3.9            |
| codalab/codalab-legacy:py37  | basic image, older version -- python3.7            |
| codalab/codalab-legacy:pyenv | handles py2 and py3 at the same time; no C#/Java support; see below for instructions on switching between py2 and py3        |
| codalab/codalab-legacy:gpu   | GPU support with nvidia and cuda, python 3, tensorflow, torch and more   |


## Using the `pyenv` image

To select your python version, do it like so:

```bash
    PYENV_VERSION=anaconda3-2.5.0 python yourscript.py $input $output
```

Here is a list of available versions:

 * `anaconda2-2.5.0`
 * `anaconda3-2.5.0`



## Updating the image

```docker build -t codalab/codalab-legacy:1.0.0 .```

## Pushing to dockerhub

```docker push codalab/codalab-legacy```
