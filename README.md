# Deploy React application on Heroku server

This [react boilerplate applicaton](https://react-docker-boilerplater.herokuapp.com/) is built and deployed on Heroku server

![Overview!](https://drive.google.com/uc?export=view&id=1KLPDpMZTqC2kT4wqM7MJq_ZUD7pG6_XK)

When there is a push to the main branch, the Github workflow will detect the change and build the image and then pushes the image to the Docker hub. After that, the image will deployed to the Heroku server using the container registry

## Run the application on your machine as a Docker container

**Note:** You need to have a desktop Docker running on your machine. Download Docker based on your OS from [here](https://www.docker.com/products/docker-desktop/)

### Steps

1. Once the docker is running, pull the image from Docker Hub

`docker pull imadevguyanand/react-docker-boilerplate`

2. Verify the image is downloaded by running the below command

`docker image ls`

3. Create a Docker container using the image name

`docker run -d -p 3000:3000 imadevguyanand/react-docker-boilerplate`

I'm running the application on port 3000. You can choose to use whichever is available for you

4. Make sure the container is running

`Docker ps`

5. Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

Runs the app in the development mode. The page will reload when you make changes. You may also see any lint errors in the console.

## Now try building the application using this repo

### Steps

1. Fork the repository

2. Change the directory

`cd react-docker-starter`

3. Build the docker image using the dockerfile

`docker build --no-cache -t react-docker-boilerplate -f Dockerfile .`

4. Deploy the docker container using the docker compose

`docker stack deploy -c docker-compose.yml react-docker-boilerplate`

5. Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

## Deploy on Heroku

Now you can deploy the application on a server

**Prerequistes:**

1. Github account
2. Heroku account
3. Docker Hub account

### Steps

1. Create an access token in Docker hub

   **We need this token for Github to communicate to the hub to push the image based on the commit changes**

2. Create an application on Heroku

3. Create an API key on Heroku

   **Github needs application name and API key to build and deploy the image on to that application**

4. Go to your Github repo and add the secrets in the settings

   1. DOCKER_HUB_USERNAME
   2. DOCKER_HUB_ACCESS_TOKEN
   3. HEROKU_API_KEY
   4. HEROKU_APP_NAME
   5. HEROKU_EMAIL

5. Now push a change to the main branch and see the work flow building the image and deploying to heroku

![Deploy!](https://drive.google.com/uc?export=view&id=1FyUITC9FKZBmoPPFmXFvvOhOHn5Xk_7i)
