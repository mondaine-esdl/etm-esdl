FROM python:3.8-alpine
LABEL Author='Roos de Kok  <roos.dekok@quintel.com>'

RUN apk add --update alpine-sdk
RUN apk add --update --no-cache libxslt-dev libxml2-dev

RUN pip install pipenv

# -- Install Application into container:
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# -- Adding Pipfiles and installing a virtual environment
COPY Pipfile .
COPY Pipfile.lock .
RUN pipenv install --deploy --ignore-pipfile

# -- Copy Application
COPY . .

# -- Set Environment
ENV PYTHONPATH=.:/usr/src/app
ENV FLASK_APP "app"

# -- Launch app
EXPOSE 5000
CMD pipenv run flask run --host=0.0.0.0
