FROM python:3.7
ENV PYTHONUNBUFFERED 1
EXPOSE 5000

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

ENV NEW_RELIC_CONFIG_FILE /app/newrelic.ini

WORKDIR /app/
RUN chmod 777 server.py

CMD newrelic-admin run-program python server.py