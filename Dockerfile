FROM n8nio/n8n:latest

USER root

# Instalar ffmpeg, Python, pip y libs necesarias desde Alpine
RUN apk update && \
    apk add --no-cache \
        ffmpeg \
        python3 \
        py3-pip \
        py3-numpy \
        py3-pillow && \
    # moviepy es puro Python, lo instalamos con pip
    pip3 install --no-cache-dir moviepy && \
    # Alias para que 'python' apunte a python3 por si alguna lib lo usa
    ln -sf /usr/bin/python3 /usr/bin/python

USER node
