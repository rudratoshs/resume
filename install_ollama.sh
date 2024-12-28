#!/bin/bash

# Define installation directory (writable location)
INSTALL_DIR=/tmp/ollama

# Create installation directory
mkdir -p $INSTALL_DIR

# Download and extract Ollama
curl -L https://ollama.com/download/ollama-linux-amd64.tgz -o ollama-linux-amd64.tgz
tar -xzf ollama-linux-amd64.tgz -C $INSTALL_DIR

# Add to PATH
export PATH="$INSTALL_DIR:$PATH"

# Verify installation
$INSTALL_DIR/ollama version