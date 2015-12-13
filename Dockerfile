# Python crontab sample

FROM python:3.5.1

MAINTAINER Shinichi Nakagawa <spirits.is.my.rader@gmail.com>

# add to application
RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app/
RUN pip install -r requirements.txt
ADD ./scheduler /app/scheduler/
ADD *.py /app/
