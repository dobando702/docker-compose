FROM jenkins/jenkins:lts

# Instalar dependencias necesarias
USER root
RUN apt-get update && apt-get install -y \
    apt-transport-https \ 
    ca-certificates \
    curl \
    software-properties-common

# Instalar Docker
RUN curl -4fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -
RUN curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall

# Instalar Docker Compose
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose

# Asegúrate de que el directorio de Jenkins sea propiedad del usuario jenkins
USER jenkins