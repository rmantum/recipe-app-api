FROM python:3.7-alpine3.13
MAINTAINER Md Mahbub Alam

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install --trusted-host=pypi.org --trusted-host=files.pythonhosted.org -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
