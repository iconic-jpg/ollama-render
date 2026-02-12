FROM ollama/ollama:latest

EXPOSE 11434

# Override default entrypoint
ENTRYPOINT ["/bin/sh", "-c"]

CMD "ollama serve & sleep 5 && ollama pull llama3:8b && wait"

