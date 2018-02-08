FROM oleggorj/presto-base:latest

COPY etc /usr/local/presto/etc

EXPOSE 8080

WORKDIR /usr/local/presto

CMD ["./bin/launcher", "run"]
