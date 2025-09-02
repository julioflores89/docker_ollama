FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0:11434
ENV OLLAMA_ORIGINS=*

EXPOSE 11434

CMD ["ollama", "serve"]