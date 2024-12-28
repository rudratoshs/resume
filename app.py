from flask import Flask, request, jsonify
from langchain_ollama import OllamaLLM

app = Flask(__name__)

# Initialize the model
llm = OllamaLLM(model="llama2")

@app.route('/api/generate', methods=['POST'])
def generate_response():
    try:
        data = request.json
        prompt = data.get('prompt', '')
        if not prompt:
            return jsonify({"error": "Prompt is required"}), 400

        # Call the Ollama model
        response = llm.invoke(prompt)
        return jsonify({"response": response})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)