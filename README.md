# Getting Started with React application deployed on Heroku using Docker image through Github actions

## Clone

If you want to clone this repository:

### `git clone https://github.com/imadevguyanand/react-docker-boilerplate.git`

## Build the docker image

### `docker build --no-cache -t react-docker-boilerplate -f Dockerfile .`

## Deply the docker container using the docker compose

### `docker stack deploy -c docker-compose.yml react-docker-boilerplate`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.
