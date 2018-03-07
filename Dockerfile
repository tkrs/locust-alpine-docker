FROM python:3.6-alpine3.6

RUN apk add --update --no-cache python3-dev musl-dev g++ && pip install locustio==0.8a2

ADD bin/run.sh /usr/local/bin/runlocust
RUN chmod 755 /usr/local/bin/runlocust

EXPOSE 8089 5557 5558

CMD ["/usr/local/bin/runlocust"]
