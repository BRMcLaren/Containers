ARG ubuntu_version=18.04
FROM ubuntu:${ubuntu_version}


COPY ./ /

# install git
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

# us 
RUN bash setup.sh
