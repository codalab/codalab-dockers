# Codalab submission images

This repository contains default Docker images that can be used to process submissions on [CodaLab Competitions](https://github.com/codalab/codalab-competitions/) and [Codabench](https://github.com/codalab/codabench/).

## Available tags

| tag   | description                                                     |
|-------|-----------------------------------------------------------------|
| codalab/codalab-legacy:py312 | basic image, including numpy, sklearn, etc. -- python3.12           |
| codalab/codalab-legacy:py39  | basic image, including numpy, sklearn, etc. -- python3.9            |
| codalab/codalab-legacy:py37  | basic image, older version -- python3.7            |
| codalab/codalab-legacy:gpu310   | GPU support (nvidia, python libraries, etc.) -- python3.10   |
| codalab/codalab-legacy:gpu   | GPU support with nvidia and cuda, python3, tensorflow, torch and more   |
| codalab/codalab-legacy:py2   | Old default image (deprecated)   |


## Build image

```
docker build -t <DockerHub tag> -f <Dockerfile path> .
```

Example:
```
docker build -t codalab/codalab-legacy:py312 -f Dockerfiles/Dockerfile-py312 .
```

## Push to DockerHub

```
docker push codalab/codalab-legacy:py312
```
