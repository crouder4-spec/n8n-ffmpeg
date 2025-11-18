FROM n8nio/n8n:latest-debian

USER root

# Actualizar repos e instalar dependencias
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        python3 \
        python3-pip \
        python3-venv \
        python3-dev \
        build-essential && \
    pip3 install --no-cache-dir moviepy numpy pillow && \
    rm -rf /var/lib/apt/lists/*

# Regresar a usuario node
USER node
