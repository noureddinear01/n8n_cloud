# 1. Bda b l-image rrasmiya dyal n8n (li hiya Alpine)
FROM n8nio/n8n:latest

# 2. T7awwel l-user "root" bach tqder t-installi
USER root

# 3. Installi l-outils b l-command s7i7a dyal Alpine (apk)
RUN apk add --no-cache ffmpeg python3 py3-pip

# 4. Daba installi yt-dlp b-istkhdam pip
RUN pip3 install -U yt-dlp

# 5. Rje3 l-user "node" l-asli dyal n8n, l-sécurité
USER node