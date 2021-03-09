FROM python:3.8-alpine
LABEL Author='Roos de Kok  <roos.dekok@quintel.com>'

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apk add --update alpine-sdk
RUN apk add --update --no-cache libxslt-dev libxml2-dev

COPY Pipfile .
COPY Pipfile.lock .
RUN pip install --upgrade pip && \
    pip install pipenv && \
    pipenv install --system --deploy --ignore-pipfile

COPY . .

ENV PYTHONPATH=.:/usr/src/app
ENV FLASK_APP "app"

EXPOSE 5000

CMD cd /usr/src/app && flask run --host=0.0.0.0
