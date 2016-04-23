FROM python:2-slim

RUN echo 'deb http://archive.ubuntu.com/ubuntu trusty multiverse' >> /etc/apt/sources.list && apt-get update

RUN apt-get install -y --force-yes gcc wget python-dev python-opencv libjpeg-dev zlibc libwebp-dev libtiff-dev

RUN pip install cv2
RUN pip install numpy
RUN pip install pillow

WORKDIR /usr/src/app

