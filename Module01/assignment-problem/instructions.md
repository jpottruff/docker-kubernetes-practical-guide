# Module 01 Assignment

Dockerize BOTH apps - the Python and the Node app.

1. Create appropriate images for both apps (two separate images!).
HINT: Have a brief look at the app code to configure your images correctly!

**ANSWER** 
(see `Dockerfile` in each app directory)

2. Launch a container for each created image, making sure, 
that the app inside the container works correctly and is usable.

**ANSWER**

**NODE** 
`docker run -d -p 3000:3000 <image-id>`

3) Re-create both containers and assign names to both containers.
Use these names to stop and restart both containers.

**ANSWER**

**NODE** 
_Builds a tagged/named image_
`docker build -t mod1-node-app:latest .`

_Runs named image as 'simple-node-app'_
`docker run -d -p 3000:3000 --name simple-node-app mod1-node-app`

4) Clean up (remove) all stopped (and running) containers, 
clean up all created images.

**ANSWER**

**NODE**
_Remove container(s)_
`docker stop simple-node-app && docker rm simple-node-app` 

_or_ 

`docker container prune`

_Remove images_
`docker images prune -a`

5) Re-build the images - this time with names and tags assigned to them.

**ANSWER** 

**NODE**
`docker build -t mod1-node-app:latest .`

6) Run new containers based on the re-built images, ensuring that the containers
are removed automatically when stopped.

**ANSWER**

**NODE**
`docker run -d -p 3000:3000 --rm --name simple-node-app mod1-node-app`