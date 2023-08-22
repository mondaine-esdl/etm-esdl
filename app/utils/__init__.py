import re

def parser_to_snake(klass):
    '''Transforms a CamelCase class name into snake_case and removes 'Parser' '''
    return re.sub(r'(?<!^)(?=[A-Z])', '_', klass.__name__[:-6]).lower()

def singleton(class_):
    instances = {}

    def getinstance(*args, **kwargs):
        if class_ not in instances:
            instances[class_] = class_(*args, **kwargs)

        return instances[class_]

    return getinstance

