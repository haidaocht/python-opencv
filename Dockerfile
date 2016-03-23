# Inherit from Heroku's python stack
FROM python:2

# Install OpenCV
RUN mkdir -p /usr/local/lib/opencv /tmp/opencv
ADD Install-OpenCV /tmp/opencv
WORKDIR /tmp/opencv/Ubuntu
RUN echo 'deb http://archive.ubuntu.com/ubuntu trusty multiverse' >> /etc/apt/sources.list && apt-get update
RUN ./opencv_latest.sh

# Python environment
# RUN echo 'export PYTHONPATH=${PYTHONPATH:/usr/local/lib/python2.7/site-packages}' > /app/.profile.d/opencv.sh

ONBUILD WORKDIR /usr/src/app
ONBUILD ADD requirements.txt /usr/src/app
ONBUILD RUN pip install -r requirements.txt
ONBUILD ADD . /usr/src/app
