# minimal debian image with cookiecutter installed
FROM python:3-slim-bookworm

RUN pip install cookiecutter \
  && useradd --create-home user \
  && mkdir /workdir \
  && chown user:user /workdir

USER user
WORKDIR /workdir
ENTRYPOINT ["/usr/local/bin/cookiecutter"]
