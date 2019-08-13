#!/usr/bin/env bash

image=$1

docker build  -t ${image} .
