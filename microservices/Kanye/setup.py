from setuptools import setup

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
