FROM python:3.8-alpine
WORKDIR /myweb
COPY . .
ARG build=test
ENV env_build=$build
RUN pip install flask
ENTRYPOINT ["python3", "./app/run.py", "env_build"]