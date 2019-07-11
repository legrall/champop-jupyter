FROM allanj92/computer-vision-box

WORKDIR /app

COPY requirements.txt /tmp
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt
