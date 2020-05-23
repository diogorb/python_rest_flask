FROM python:3.7
ENV PYTHONUNBUFFERED 1
EXPOSE 5000

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt


WORKDIR /app/
RUN chmod 777 server.py

CMD python server.py