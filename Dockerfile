FROM python:3.8-alpine
WORKDIR /web
COPY . /web
ENTRYPOINT ["python3", "./app/run.py"]