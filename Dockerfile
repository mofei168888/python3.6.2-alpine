FROM python:3.6.2-alpine


COPY main.py /

ENTRYPOINT ["python", "/main.py"]