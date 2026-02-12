FROM ollama/ollama:latest

# wipe any preloaded models
RUN rm -rf /root/.ollama/models/*

# start ollama server in background, pull model, stop server
RUN ollama serve & \
    sleep 5 && \
    ollama pull tinyllama && \
    pkill ollama

EXPOSE 11434

CMD ["ollama", "serve"]

