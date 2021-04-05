# Fibonacci Server

A Python Flask server that will respond to GET requests on http://localhost:8080 with subsequent items in the fibonacci sequence.

## Running Locally

### Prerequisites:
1. Install Docker: https://docs.docker.com/get-docker/
2. Install Docker Compose: https://docs.docker.com/compose/install/

### Setup:

1. Use git to clone the repository:

   `git clone https://github.com/kate-whalen/fibonacci.git`

2. Open the top-level directory in a terminal:

    `cd fibonacci`

3. Run the provided script to build and start the Docker container in the background:

   `./start.sh`

If the `start.sh` script is not executable, you may need to make it executable by running `chmod +x start.sh`.

The `start.sh` script can be re-run to rebuild the container.

4. Use `docker-compose ps` to check the status of the container.

### Testing:

Tests are run as part of the Dockerfile; they can be rerun via:

```bash
docker-compose exec app python -m unittest
```

### Stopping:

Stopping the container will lose all progress through the fibonacci sequence.

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