# Python requirements
FROM continuumio/anaconda:4.3.0

# Java, C#, and R requirements
RUN apt-get update && apt-get install -y --fix-missing libsm6 openjdk-7-jre r-base mono-runtime


