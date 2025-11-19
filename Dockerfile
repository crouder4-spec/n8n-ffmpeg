FROM n8nio/n8n:latest

# Cambiamos a root para instalar dependencias
USER root

# Actualizamos Alpine e instalamos FFmpeg
RUN apk update && apk add --no-cache ffmpeg

# Volvemos a usuario n8n
USER node

# Puerto por defecto del servicio
EXPOSE 5678

# Comando de inicio de n8n
CMD ["n8n"]

