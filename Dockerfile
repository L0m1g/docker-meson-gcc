FROM gcc:latest

# Installer Python3, pip, Ninja et Meson
RUN apt-get update && apt-get install -y \
      python3 \
      python3-pip \
      ninja-build && \
      pip3 install meson && \
      apt-get clean && rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail par défaut
WORKDIR /app
