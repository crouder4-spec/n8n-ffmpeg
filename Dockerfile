FROM n8nio/n8n:1.62.0

USER root

# Actualizar repos e instalar FFmpeg + Python + pip
RUN apt-get update && \
    apt-get install -y ffmpeg python3 python3-pip && \
    pip3 install --no-cache-dir moviepy numpy pillow && \
    rm -rf /var/lib/apt/lists/*

USER node
