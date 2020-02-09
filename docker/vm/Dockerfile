FROM ubuntu:18.04

COPY .ssh /root/.ssh
COPY .gitconfig /root/

RUN apt-get update && apt-get install -y \
	make \
	git \
	clang-6.0 \
	python3 \
	python3-pip \
	vim \
	wget

WORKDIR /home
