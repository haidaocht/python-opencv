FROM ubuntu:14.04

RUN echo 'deb http://archive.ubuntu.com/ubuntu trusty multiverse' >> /etc/apt/sources.list && apt-get update

WORKDIR /usr/src/app
RUN apt-get install -y --force-yes gcc wget python-dev libjpeg-dev zlibc libwebp-dev libtiff-dev libssl-dev libffi-dev
RUN apt-get install -y --force-yes libopencv-dev python-opencv
RUN apt-get install -y --force-yes python-pip

RUN pip install --upgrade pip
RUN pip install numpy 
RUN ln /dev/null /dev/raw1394
RUN pip install pillow

# RUN pip install pyasn1
# RUN pip install cv2
