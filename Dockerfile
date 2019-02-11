FROM alpine

RUN wget -O /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN chmod +x /usr/local/bin/ecs-cli
RUN echo "$(wget -O- https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest.md5)  /usr/local/bin/ecs-cli" | md5sum -c -

ENTRYPOINT ["ecs-cli"]

