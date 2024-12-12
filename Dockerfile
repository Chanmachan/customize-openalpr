FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git \
    wget \
    unzip \
    emacs-nox \
    libopencv-dev \
    libleptonica-dev \
    tesseract-ocr \
    libtesseract-dev \
    python3 \
    python3-pip \
    libtool \
    autoconf \
    automake \
    pkg-config \
    curl \
    liblog4cplus-dev \
    && apt-get clean

CMD ["bash"]