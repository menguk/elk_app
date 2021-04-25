FROM openjdk:8-jdk-alpine

ENV HOME /home/app

# repo for example https://github.com/otale/tale

RUN apk add --no-cache curl bash git lftp

RUN mkdir -p $HOME

WORKDIR $HOME

ADD . $HOME

# folder for result
RUN mkdir res  

# folder for repo
RUN mkdir repo

ARG URL_REPO
RUN git clone $URL_REPO repo

