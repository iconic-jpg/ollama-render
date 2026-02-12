FROM ollama/ollama:latest

EXPOSE 11434

RUN ollama pull llama3:8b

CMD ["ollama", "serve"]
