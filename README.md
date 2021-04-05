# Fibonacci Server

A Python Flask server that will respond to GET requests on http://localhost:8080 with subsequent items in the fibonacci sequence.

## Running Locally

### Prerequisites:
1. Install Docker: https://docs.docker.com/get-docker/
2. Install Docker Compose: https://docs.docker.com/compose/install/

### Setup:
The `start.sh` script will start a Docker container in the background. The script can be re-run to rebuild or restart the container. Restarting the container will return you to the beginning of the fibonacci sequence.

If the `start.sh` script is not executable, you may need to make it executable by running `chmod +x start.sh` from this directory.

Use `docker-compose ps` to check the status of the container.

### Testing:

Tests are run as part of the Dockerfile; they can be rerun via:

```bash
docker-compose exec app python -m unittest
```

### Stopping:

Stop the container with the command:

```bash
docker-compose down
```

## Running Locally (alternative)

### Prerequisites:
1. Python 3.9 (or later): https://www.python.org/downloads/
2. pipenv: https://pypi.org/project/pipenv/

### Setup:
```bash
pipenv shell
pipenv install
flask run app/app.py
```
### Testing:

```bash
python -m unittest
```

## TODO

- [ ] Production deployment guide
- [ ] Add database for storing state