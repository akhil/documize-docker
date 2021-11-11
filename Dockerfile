FROM debian:latest

RUN apt-get -qq update && apt-get -qq install -y wget && \
     wget https://documize.s3-eu-west-1.amazonaws.com/downloads/documize-community-plus-linux-amd64 \
     && chmod 777 ./documize-community-plus-linux-amd64 

EXPOSE 5001

CMD ["./documize-community-plus-linux-amd64"]