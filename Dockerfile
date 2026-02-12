FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0

CMD ["sh", "-c", "ollama serve & sleep 5 && ollama pull llama3:8b && tail -f /dev/null"]

