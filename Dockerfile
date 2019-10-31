FROM python:3-alpine
MAINTAINER Edwin Matthijssen  <edwin.matthijssen@tno.nl>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt .

RUN \
 python3 -m pip install -r requirements.txt --no-cache-dir && \
 apk --purge del .build-deps

COPY . .

ENV PYTHONPATH=.:/usr/src/app

EXPOSE 5000

CMD cd /usr/src/app && python3 app.py