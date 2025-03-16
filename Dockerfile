# Dockerfile
FROM ubuntu:22.04

# Instala dependências básicas
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Instala o Ollama
RUN curl -fsSL https://ollama.ai/install.sh | sh

# Copia o script de inicialização
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expõe a porta padrão do Ollama
EXPOSE 11434:11434

# Comando para rodar o script de inicialização
CMD ["/start.sh"]