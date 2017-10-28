FROM python:3.6.2-alpine



COPY main.py /
#COPY requirements.txt
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt


EXPOSE 80


ENTRYPOINT ["python", "/main.py"]