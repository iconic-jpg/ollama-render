FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0

RUN rm -rf /root/.ollama/models/*

RUN ollama pull tinyllama

EXPOSE 11434

ENTRYPOINT []

CMD sh -c "\
ollama serve & \
sleep 6 && \
ollama pull llama3 && \
wait"

