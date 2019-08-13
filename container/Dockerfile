# Build an image that can do training and inference in SageMaker
# This is a Python 3.6

FROM ubuntu:16.04

MAINTAINER Amazon AI <sage-learner@amazon.com>


RUN apt-get -y update && apt-get install -y --no-install-recommends \
         wget \
         python \
         nginx \
         ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Get python packages.
RUN wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py && \
    pip install numpy scipy scikit-learn pandas flask gevent gunicorn keras tensorflow theano h5py textblob 

ENV PYTHONUNBUFFERED=TRUE
ENV PYTHONDONTWRITEBYTECODE=TRUE
ENV PATH="/opt/program:${PATH}"

# Set up the program in the image
COPY rnn /opt/program
WORKDIR /opt/program

