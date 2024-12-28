#!/bin/bash

# Start the Ollama server
ollama serve &

# Wait for Ollama server to initialize
sleep 5

# Start the Flask application
python app.py
