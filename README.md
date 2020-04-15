# Node app for a Docker container

This is a simple nodejs app meant for a short and sweet getting started with Docker guide at https://karankapoor.in/articles/docker-workshop

## Simple run instructions

`docker run -dP karankapoor/docker-workshop:latest`

Then look for the port that the container is exposing on a random port on the host. You can get the port using the command:

`docker ps`

Notice the port number. Docker will automatically choose and assign a port in the 32768 to 65535 range.
It will be in the format `0.0.0.0:3000->80/tcp` indicating that the app is running on port 3000.
Your app

Application URL: http://localhost:{port-on-your-host}/

## Specifying a custom port number

`docker run -d -p 30000:3000 --name my-app karankapoor/docker-workshop:latest`

This will run the application container and expose it on port 30000 of the host machine.

Application URL: http://localhost:30000/

## Available Methods

- `/` - Serves the index.html page
- `/welcome.html` - Serves the welcome.html page
- `/hello` - GET endpoint that responds with a simple hello message.

Happy learning!!