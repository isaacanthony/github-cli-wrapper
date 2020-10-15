FROM ubuntu:latest
WORKDIR /src

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y \
    gnupg \
    software-properties-common \
  && apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0 \
  && apt-add-repository https://cli.github.com/packages \
  && apt-get update \
  && apt-get install -y gh
