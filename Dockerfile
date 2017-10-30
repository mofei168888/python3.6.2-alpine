FROM daocloud.io/ubuntu:16.04



RUN apt-get update
RUN apt-get install -y python3 && \
    python3-pip

RUN  mkdir -p /app

WORKDIR /app


COPY base.txt /app
COPY requirements.txt /app

RUN cd /app && pip install -r base.txt
RUN cd /app && pip install -r requirements.txt

COPY /app /app

EXPOSE 80


ENTRYPOINT ["python", "/app/main.py"]