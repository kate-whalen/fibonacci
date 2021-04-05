FROM python:3.9.3-alpine

WORKDIR /app

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY requirements.txt /app

RUN pip3 install -r requirements.txt --no-cache-dir

COPY . /app

EXPOSE 8080

CMD ["flask", "run"]
