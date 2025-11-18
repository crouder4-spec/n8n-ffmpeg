FROM n8nio/n8n:latest

USER root

# Instalar ffmpeg en Alpine
RUN apk update && apk add --no-cache ffmpeg

USER node
