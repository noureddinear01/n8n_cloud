# 1. Bda b l-image rrasmiya dyal n8n
FROM n8nion8nlatest

# 2. T7awwel l-user root bach tqder t-installi
USER root

# 3. Installi ffmpeg o python-pip
RUN apt-get update && apt-get install -y --no-install-recommends 
    ffmpeg 
    python3-pip 
    && apt-get clean && rm -rf varlibaptlists

# 4. Installi yt-dlp
RUN pip3 install -U yt-dlp

# 5. Rje3 l-user node l-asli dyal n8n, l-sécurité
USER node