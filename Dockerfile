

RUN ollama pull llama3:8b

FROM ollama/ollama:latest

EXPOSE 11434

# Start server and pull model on first run
CMD sh -c "ollama serve & sleep 5 && ollama pull llama3:8b && wait"
