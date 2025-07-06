FROM alpine:latest

COPY app.sh /app.sh 

RUN chmod +x /app.sh 

ENTRYPOINT [ "/app.sh" ]