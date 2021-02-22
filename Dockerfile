FROM python:3.8-alpine
MAINTAINER Roos de Kok  <roos.dekok@quintel.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apk add --update alpine-sdk
RUN apk add --update --no-cache libxslt-dev libxml2-dev

COPY requirements.txt .

RUN python3.8 -m pip install -r requirements.txt --no-cache-dir
# RUN apk --purge del .build-deps

COPY . .

ENV PYTHONPATH=.:/usr/src/app

EXPOSE 5000

CMD cd /usr/src/app && python3.8 app.py
