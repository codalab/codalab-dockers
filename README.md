# Codalab Legacy Worker

This repo stores the legacy codalab worker, which has support for:

1. Python 2.7 (with Anaconda 2.5.0 libraries)
2. Java
3. R
4. C#

## Updating the image

```docker build -t ckcollab/codalab-legacy:latest .```

## Pushing to dockerhub

```docker push ckcollab/codalab-legacy```