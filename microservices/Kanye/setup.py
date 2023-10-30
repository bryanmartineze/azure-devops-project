from setuptools import setup
from datetime import datetime

version = datetime.now().strftime("%Y%m%d%H%M%S")

setup(
    name="Kanye",
    version="1.0",
    packages=["Kanye"],
    install_requires=[
        "Flask",
        "requests",
        "gunicorn",
        "Flask-CORS",
    ],
)
