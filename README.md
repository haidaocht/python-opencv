# Python Docker Image with OpenCV

This repository contains a Python and OpenCV docker image.

You might hit [this issue when import cv2](http://stackoverflow.com/questions/12689304/ctypes-error-libdc1394-error-failed-to-initialize-libdc1394), then you need to follow the following script in your **dockerfile**:

```
CMD sh -c 'ln -s /dev/null /dev/raw1394'; <your-script-here>
```


[Image available on Dockerhub](https://hub.docker.com/r/haitch/python-opencv/).
