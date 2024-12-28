#!/bin/bash

# Install Ollama CLI
./install_ollama.sh

# Start the Ollama server
/tmp/ollama/ollama serve &

# Wait for the Ollama server to initialize
sleep 5

# Start the Flask application
python app.py