FROM allanj92/computer-vision-box



COPY requirements.txt /tmp
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt
USER root
WORKDIR /opt
#Install ImageMagick
RUN apt-get install build-essential -y
RUN wget https://www.imagemagick.org/download/ImageMagick.tar.gz  \
  && tar xvzf ImageMagick.tar.gz  \
  && cd ImageMagick-7.0.8-53/  \
  && ./configure \
  && make \
  && make install \
  && ldconfig /usr/local/lib \
  && magick -version
CMD bash
EXPOSE 8888
