# Codalab Legacy Worker

This repo stores the legacy codalab worker, which has support for:

1. Python 2.7 (with Anaconda 2.5.0 libraries)
2. Java 1.7
3. R
4. C#

## Available tags, roughly

| tag   | description                                                     |
|-------|-----------------------------------------------------------------|
| 1.0.0 | the basic version, comes with numpy, nibabel, etc. -- python 2! |
| py3   | same as above but with python3                                  |

## Updating the image

```docker build -t ckcollab/codalab-legacy:latest .```

## Pushing to dockerhub

```docker push ckcollab/codalab-legacy```
