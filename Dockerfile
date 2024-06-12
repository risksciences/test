FROM continuumio/miniconda3

WORKDIR /box

RUN mkdir /box/workspace
RUN mkdir /box/workspace3

RUN conda env create \
    --yes \
    --no-default-packages \
    --prefix /box/prefix \
    --file https://raw.githubusercontent.com/risksciences/test/main/env.yml

RUN conda run \
    --live-stream \
    --prefix /box/prefix \
    pip install \
    --requirement https://raw.githubusercontent.com/risksciences/test/main/requirement.txt
