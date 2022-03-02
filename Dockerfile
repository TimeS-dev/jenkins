FROM python:3.8-alpine
COPY . /web
WORKDIR /web
RUN apk add --update bash
CMD /web/run.py