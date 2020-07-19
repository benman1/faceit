FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

# install debian packages
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update -qq

RUN apt-get install --no-install-recommends -y \
    --allow-downgrades --allow-change-held-packages \
    # install essentials
	build-essential \ 
	# install python 3
	python3.6 \ 
	python3.6-dev \
	python3-wheel \ 
	# Boost for dlib
	cmake \
	libboost-all-dev \ 
	# requirements for keras
	python3-h5py \
	python3-yaml \
	python3-pydot \
	python3-setuptools \
	vim curl ffmpeg screen \
        libcudnn7=7.0.5.15-1+cuda9.0 \
        libcudnn7-dev=7.0.5.15-1+cuda9.0 \
    && apt-get clean \
     && rm -rf /var/lib/apt/lists/*

#mkdir /usr/lib/nvidia && apt install -y nvidia-352
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python3.6 get-pip.py

COPY ./requirements.txt .
RUN pip --no-cache-dir install -r ./requirements.txt

WORKDIR /project/
