#!/bin/bash

# Inicia o Ollama em segundo plano
ollama serve &

# Aguarda o Ollama iniciar
echo "Aguardando o Ollama iniciar..."
sleep 10

# Baixa o modelo DeepSeek
echo "Baixando o modelo deepseek-r1:7b..."
ollama pull deepseek-r1:7b

# Reinicia o Ollama para garantir que o modelo esteja carregado
echo "Reiniciando o Ollama..."
pkill ollama
sleep 5
ollama serve &

# Mantém o container rodando
echo "Ollama está pronto para uso!"
tail -f /dev/null