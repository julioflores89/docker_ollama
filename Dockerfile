FROM ubuntu:22.04

# Instalar dependencias
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Instalar Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Variables de entorno
ENV OLLAMA_HOST=0.0.0.0:11434
ENV OLLAMA_ORIGINS=*

EXPOSE 11434

# Comando de inicio
CMD ["ollama", "serve"]
