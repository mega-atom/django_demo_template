FROM python:latest

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "--host", "0.0.0.0", "--port", "8000", "django_devops.asgi:application"]