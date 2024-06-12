FROM continuumio/miniconda3

WORKDIR /box
COPY . /box

RUN mkdir /box/workspace
RUN mkdir /box/workspace3

RUN ls /box


