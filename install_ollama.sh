#!/bin/bash

# Download and install the Ollama CLI
curl -LO https://ollama.ai/download/latest/ollama-linux-x64.tar.gz
mkdir -p /usr/local/bin/ollama
tar -xzf ollama-linux-x64.tar.gz -C /usr/local/bin/ollama
export PATH="/usr/local/bin/ollama:$PATH"

# Verify installation
ollama version