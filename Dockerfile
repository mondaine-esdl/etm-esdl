FROM python:3.8-alpine
LABEL Author='Roos de Kok  <roos.dekok@quintel.com>'

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apk add --update alpine-sdk
RUN apk add --update --no-cache libxslt-dev libxml2-dev

COPY requirements.txt .

RUN python3.8 -m pip install -r requirements.txt --no-cache-dir
# RUN apk --purge del .build-deps

COPY . .

ENV PYTHONPATH=.:/usr/src/app
ENV FLASK_APP "app"

EXPOSE 5000

CMD cd /usr/src/app && flask run --host=0.0.0.0
