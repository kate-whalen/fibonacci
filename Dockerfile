FROM python:3.9.3-alpine

ENV FLASK_APP=app/app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development

# install helpful packages
RUN apk --update add bash nano

RUN mkdir -p /flask/app

COPY app/requirements.txt /flask/app

# Install python packages
RUN pip3 install -r /flask/app/requirements.txt --no-cache-dir

# Copy app and tests to container
COPY app /flask/app
COPY tests /flask/tests

# Add user for flask application
RUN addgroup -S flask
RUN adduser -S -D -h /flask flask flask
RUN chown -R flask:flask /flask

# Change current user
USER flask

# Run the tests
WORKDIR /flask
RUN python -m unittest discover

# Expose port 8080 and run server
EXPOSE 8080
CMD ["flask", "run"]
