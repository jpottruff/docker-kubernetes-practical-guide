# To dockerize the starting files
1. Copy the files into a new directory and change into it
    ```bash
    cp -r data-volume-app-starting-files data-volume-app

    cd data-volume-app
    ```

2. Dockerize the app
    ```bash
    # Create the docker file
    touch Dockerfile

    ### EDIT IT ACCORDINGLY ###

    ## Build the image (choose either; unamed | named)
    docker build .
    docker build -t data-vol-img:latest .

    # Run the image (choose either; unnamed | named)
    # NOTE: named command will also remove the container when stopped via --rm
    docker run -d -p 3000:80 <image-id>
    docker run -d -p 3000:80 --name data-vol-app --rm data-vol-img
    ```