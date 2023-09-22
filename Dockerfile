# minimal debian image with cookiecutter installed
FROM python:3-slim-bookworm

RUN pip install cookiecutter && mkdir /workdir

WORKDIR /workdir
ENTRYPOINT ["/usr/local/bin/cookiecutter"]
