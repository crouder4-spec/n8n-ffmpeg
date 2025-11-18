FROM n8nio/n8n:latest

USER root

# Instalar ffmpeg, python y pip en Alpine
RUN apk update && \
    apk add --no-cache ffmpeg python3 py3-pip && \
    pip3 install moviepy numpy Pillow

USER node
