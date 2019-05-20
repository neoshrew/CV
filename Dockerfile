FROM ubuntu:14.04

RUN  apt-get update \
    && apt-get install -y \
      texlive-xetex \
      make \
      texlive-fonts-recommended \
      texlive-latex-recommended \
      texlive-latex-extra \
    && rm -rf /var/lib/apt/lists/*
