FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0
ENV OLLAMA_PORT=${PORT}

# Pre-pull model at build time (optional but recommended)
RUN ollama pull llama3:8b

CMD ["ollama", "serve"]

