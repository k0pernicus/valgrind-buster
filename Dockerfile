# docker run --rm -it -v $APP_PATH:/app/src valgrind-buster

FROM debian:buster

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install gcc g++ valgrind -y && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app/src

WORKDIR /app

COPY run.sh .

RUN chmod +x run.sh

CMD ["./run.sh"]
