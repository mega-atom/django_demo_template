FROM: python:latest

WORKDIR /app

COPY requirements.txt requirements.txt

COPY . .