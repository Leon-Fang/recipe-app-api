FROM python:3.7-alpine3.12
LABEL MAINTAINER="SHANGHAI APP DEVELOPER" 

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requierments.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
