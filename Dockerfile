# 1. Bda b l-image rrasmiya dyal n8n (li hiya Alpine)
FROM n8nio/n8n:latest

# 2. T7awwel l-user "root" bach tqder t-installi
USER root

# 3. Installi ga3 l-outils li khassina b dqa we7da b l-command s7i7a dyal Alpine (apk)
RUN apk add --no-cache ffmpeg python3 yt-dlp

# 4. Rje3 l-user "node" l-asli dyal n8n, l-sécurité
USER node