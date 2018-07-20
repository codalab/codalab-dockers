# Codalab submission images

This repo contains many images that submissions to codalab use for processing

## Available tags, roughly

| tag   | description                                                     |
|-------|-----------------------------------------------------------------|
| 1.0.0 | the basic version, comes with numpy, nibabel, etc. -- python 2! |
| py3   | same as above but with python3                                  |
| pyenv | handles py2 and py3 at the same time; no C#/Java support        |

## Updating the image

```docker build -t codalab/codalab-legacy:1.0.0 .```

## Pushing to dockerhub

```docker push codalab/codalab-legacy```
