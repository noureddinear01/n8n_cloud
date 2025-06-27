# 1. Bda b l-image rrasmiya dyal n8n
FROM n8nio/n8n:latest

# 2. T7awwel l-user "root" bach tqder t-installi
USER root

# 3. Installi l-outils li khassina (ffmpeg o pip) -- HNA FIN KAN L-MOUCHKIL O TSLLE7
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg python3-pip && apt-get clean && rm -rf /var/lib/apt/lists/*

# 4. Daba installi yt-dlp b-istkhdam pip
RUN pip3 install -U yt-dlp

# 5. Rje3 l-user "node" l-asli dyal n8n, l-sécurité
USER node