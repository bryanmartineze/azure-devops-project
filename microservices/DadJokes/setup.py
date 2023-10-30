from setuptools import setup

setup(
    name="DadJokes",
    version="1.0",
    packages=["DadJokes"],
    install_requires=[
        "Flask",
        "requests",
        "gunicorn",
        "Flask-CORS",
    ],
)
