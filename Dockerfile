FROM python:3.6.2-alpine



RUN pip install -r requirements.txt

COPY main.py /

ENTRYPOINT ["python", "/main.py"]