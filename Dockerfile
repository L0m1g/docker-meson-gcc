FROM gcc:latest

# Installer Python3, pip, Ninja et Meson
RUN apt-get update && apt-get install -y \
      meson \
      ninja-build && \
      apt-get clean && rm -rf /var/lib/apt/lists/*

# Définir le répertoire de travail par défaut
WORKDIR /app
