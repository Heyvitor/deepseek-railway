# Dockerfile
FROM ubuntu:22.04

# Instala dependências básicas
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Instala o Ollama
RUN curl -fsSL https://ollama.ai/install.sh | sh

# Baixa o modelo DeepSeek
RUN ollama pull deepseek-r1:7b

# Expõe a porta padrão do Ollama
EXPOSE 11434

# Script de inicialização
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Comando para rodar o Ollama
CMD ["/start.sh"]