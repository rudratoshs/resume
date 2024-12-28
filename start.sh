#!/bin/bash

# Install Ollama CLI
./install_ollama.sh

# Start the Ollama server
/usr/local/bin/ollama/ollama serve &

# Wait for the Ollama server to start
sleep 5

# Start the Flask application
python app.py