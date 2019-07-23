# FROM allanj92/computer-vision-box
FROM ubuntu:18.04

# WORKDIR /app

RUN apk --update add imagemagick && \
    rm -rf /var/cache/apk/*

# COPY requirements.txt /tmp
# RUN pip3 install --no-cache-dir -r /tmp/requirements.txt
