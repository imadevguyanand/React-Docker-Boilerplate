# The Dockerfile is a set of instructions 
# that defines how your image is built. 
# It is a series of steps that you have defined, 
# and that must happen before your image is successfully built.

# pull the base image 
FROM node:alpine

# Specify working directory
WORKDIR /app

# Copy package.json to the root of the working directory
COPY package.json /app

# Run a command to install all the project dependencies from packakge.json file
RUN npm install

# Copy all the source code in youtube-stats folder to the working directory
COPY . .

# Build the React app for production
RUN npm run build

# Expose a port number by default
EXPOSE 3000

# Command instruction to run the application using the npm start
CMD ["npm", "start"]