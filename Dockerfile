FROM python:3.12-slim

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip  install --no-cache-dir -r /app/requirements.txt

COPY . .

CMD ["pytest", "tests/test_requests_file.py"]