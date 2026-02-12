FROM ollama/ollama:latest

EXPOSE 11434

CMD sh -c "ollama serve & sleep 5 && ollama pull llama3:8b && wait"

