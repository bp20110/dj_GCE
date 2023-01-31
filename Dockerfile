FROM python:3.8
ENV  PYTHONNUMBERBERFUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requiredments.txt /code/
RUN apt-get install libpq-dev
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]
RUN pip install -r requiredments.txt
COPY . /code/
