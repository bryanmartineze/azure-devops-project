from setuptools import setup
from datetime import datetime

version = datetime.now().strftime("%Y%m%d%H%M%S")

setup(
    name="DadJokes",
    version=version,
    packages=["DadJokes"],
    install_requires=[
        "Flask",
        "requests",
        "gunicorn",
        "Flask-CORS",
    ],
)
