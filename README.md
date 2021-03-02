The etm-esdl app allows for converting ESDL files into scenarios on the [Energy Transition Model](https://pro.energytransitionmodel.com/). Please vist the ESDL [documentation](https://energytransition.gitbook.io/esdl/) if you want to learn more about this energy language.

## API for converting ESDL files into ETM scenarios
You can find more info on the api at http://esdl.energytransitionmodel.com/api/v1/

## Installation
The etm-edsl app is a python Flask app that has support for running in Docker.

If you want to run the app locally in debug and reload-on-change mode, please use `docker-compose up`.

For development and testing creating a virtual environnement is recommended:
```
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
```

Every new (terminal) session you should reactivate your environnement with
`source venv/bin/activate`

You can test your local changes by running pytest
`python -m pytest`
