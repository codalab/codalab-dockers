# Legacy

Dockerfile: [Dockerfile-legacy](Dockerfile-legacy)

Contains:
1. Python 2.7 (with Anaconda 2.5.0 libraries)
2. Java 1.7
3. R
4. C#


# Legacy w/Python 3

Dockerfile: [Dockerfile-py3](Dockerfile-py3)

Contains:
1. Python 3.6 (with Anaconda 2.5.0 libraries)
2. Java 1.7
3. R
4. C#

*NOTE: You have to run your script with `python3` not `python`*


# Pyenv codalab submission image

Dockerfile: [Dockerfile-pyenv](Dockerfile-pyenv)

To select your python version, do it like so:

```bash
    PYENV_VERSION=anaconda3-2.5.0 python yourscript.py $input $output
```

Here is a list of available versions:

 * `anaconda2-2.5.0`
 * `anaconda3-2.5.0`

