FROM oleggorj/presto-base:latest

COPY etc /usr/local/presto/etc

EXPOSE 8081

WORKDIR /usr/local/presto

CMD ["./bin/launcher", "run"]

