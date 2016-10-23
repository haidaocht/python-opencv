FROM ubuntu:14.04

RUN echo 'deb http://archive.ubuntu.com/ubuntu trusty multiverse' >> /etc/apt/sources.list && apt-get update

WORKDIR /usr/src/app
RUN apt-get install -y --force-yes gcc wget python-dev python-opencv libjpeg-dev zlibc libwebp-dev libtiff-dev

RUN wget -P /usr/src/app https://bootstrap.pypa.io/get-pip.py
RUN python /usr/src/app/get-pip.py
RUN rm -rf /usr/src/app/get-pip.py

RUN pip install numpy pyopenssl ndg-httpsclient pyasn1 
RUN pip install cv2
RUN pip install pillow
