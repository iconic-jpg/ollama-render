
FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0

ENTRYPOINT ["/bin/sh", "-c"]

CMD "ollama serve & sleep 5 && ollama pull llama3:8b && tail -f /dev/null"
