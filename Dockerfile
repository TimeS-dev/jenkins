FROM python:3.8-alpine
COPY . /web
WORKDIR /web
CMD /web/run.py