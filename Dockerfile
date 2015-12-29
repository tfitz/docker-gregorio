FROM ubuntu:14.04.3

MAINTAINER Tim Fitzgerald <fitzgeraldt@gonzaga.edu>

RUN apt-get update && apt-get install -y \
    autoconf \
    bison \
    build-essential \
    flex \
    fontforge \
    git \
    libltdl7-dev \
    texlive-full

RUN apt-get clean    

RUN git clone --depth 1 -b develop https://github.com/gregorio-project/gregorio.git /gregorio-git

#CD /gregorio-git
#RUN ./build.sh --force=autoreconf &&
    

WORKDIR "/workdir"

# ENTRYPOINT ["gregorio"]

