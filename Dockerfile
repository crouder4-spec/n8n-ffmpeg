FROM n8nio/n8n:1.74.0-debian

USER root

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

USER node
