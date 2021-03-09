The etm-esdl app allows for converting ESDL files into scenarios on the [Energy Transition Model](https://pro.energytransitionmodel.com/). Please vist the ESDL [documentation](https://energytransition.gitbook.io/esdl/) if you want to learn more about this energy language.

## API for converting ESDL files into ETM scenarios
You can find more info on the api at http://esdl.energytransitionmodel.com/api/v1/

## Installation
The etm-edsl app is a python Flask app that has support for running in Docker. We recommend
installing Docker on your system.

You can download a Docker image, or generate one yourself with `docker-compose build`

If you want to run the app locally in debug and reload-on-change mode, please use `docker-compose up`.

## Using pipenv in development
For development and testing please use pipenv:
```
pip3 install pipenv
pipenv install --dev
pipenv shell
```
The `dev` flag is used to install development dependencies as well (like `pytest`).

Every new session you should reactivate your virtual environment with:
```
 pipenv shell
```
You can exit the virtual environment with `exit`

You can now test your local changes by running pytest:
```
python -m pytest
```

You can update your local dependencies when the Pipfile.lock was updated upstream by using
```
pipenv install --dev --ignore-pipfile
```

When you update the Pipfile manually please relock and install new dependencies by simply
```
pipenv install --dev
```
