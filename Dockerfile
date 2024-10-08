# Dockerfile

# pull the official docker image
FROM python:3.11.1-slim

# set work directory
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["uvicorn", "app.main:app", "--host=0.0.0.0", "--port=8000"]

