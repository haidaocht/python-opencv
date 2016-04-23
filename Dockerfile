FROM python:2-slim

RUN apt-get install -y --force-yes gcc wget python-dev python-opencv libjpeg-dev zlibc libwebp-dev libtiff-dev

RUN pip install cv2
RUN pip install numpy
RUN pip install pillow

WORKDIR /usr/src/app

