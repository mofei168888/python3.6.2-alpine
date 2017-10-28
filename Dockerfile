FROM python:3.6.2-alpine



COPY main.py
COPY requirements.txt

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "/main.py"]