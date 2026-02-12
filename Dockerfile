FROM ollama/ollama:latest

ENTRYPOINT ["/bin/sh", "-c"]

CMD "ollama serve --host 0.0.0.0:$PORT & \
sleep 5 && \
ollama pull llama3:8b && \
wait"

