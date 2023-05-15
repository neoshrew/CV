FROM ubuntu:22.10

# For some reason DPKG would block the build to ask for TZ info,
# So set TZ here to help it out, and then make sure it knows
# to run non-interactively.
ENV TZ=Europe/London
ENV DEBIAN_FRONTEND=noninteractive

RUN  apt-get update \
    && apt-get install -y \
      texlive-xetex \
      make \
      texlive-fonts-recommended \
      texlive-latex-recommended \
      texlive-latex-extra \
    && rm -rf /var/lib/apt/lists/*
