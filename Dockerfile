FROM diuis/docker-emsdk-installed:19.04-python2-emsdk1.38.42llvm

ARG OPENCV_ARCHIVE=https://github.com/opencv/opencv/tarball/3.4.7

USER appuser
RUN wget -nv $OPENCV_ARCHIVE -O /home/appuser/opencv.tar && \
    mkdir /home/appuser/opencv && \
    tar xf /home/appuser/opencv.tar -C /home/appuser/opencv --strip-components 1 && \
    rm /home/appuser/opencv.tar
