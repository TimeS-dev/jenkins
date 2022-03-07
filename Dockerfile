FROM python:3.8-alpine
WORKDIR /web
COPY . /web
ARG build=test
ENV env_build=$build
EXPOSE 5000
ENTRYPOINT ["python3", "./app/run.py", "env_build"]