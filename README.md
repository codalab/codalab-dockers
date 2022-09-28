# Codalab submission images

This repository contains default Docker images that can be used to process submissions on [CodaLab Competitions](https://github.com/codalab/codalab-competitions/).

## Available tags

| tag   | description                                                     |
|-------|-----------------------------------------------------------------|
| codalab/codalab-legacy:py39  | basic image, including numpy, sklearn, etc. -- python3.9            |
| codalab/codalab-legacy:py37  | basic image, older version -- python3.7            |
| codalab/codalab-legacy:gpu   | GPU support with nvidia and cuda, python3, tensorflow, torch and more   |
| codalab/codalab-legacy:py2   | Old default image (deprecated)   |


## Updating the image

```docker build -t codalab/codalab-legacy:1.0.0 .```

## Pushing to dockerhub

```docker push codalab/codalab-legacy```
