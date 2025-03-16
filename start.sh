#!/bin/bash

# Inicia o Ollama em segundo plano
ollama serve &

# Aguarda o Ollama iniciar
sleep 5

# Carrega o modelo DeepSeek
ollama run deepseek-r1:7b

# Mantém o container rodando
tail -f /dev/null