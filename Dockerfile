FROM ollama/ollama:latest

# Remove any preloaded models
RUN rm -rf /root/.ollama/models/*

# Start server, pull tinyllama, stop server
RUN /bin/sh -c "ollama serve & sleep 6 && ollama pull tinyllama && pkill ollama"

EXPOSE 11434

# Override default entrypoint
ENTRYPOINT []

# Start ollama properly
CMD ["ollama", "serve"]

