For this task I to work with the Python app.

I built the [Dockerfile](/2-simpleapp/Dockerfile), then I used the commands ```docker build -t simpleapp .``` to build an image from this Dockerfile.

After building the image, I ran a container with it.

![Screenshot of building the Docker image](https://github.com/alexandru-urlateanu/DevOps-Internship-Tasks/blob/main/2-simpleapp/build.JPG?raw=true)

To upload my image to my DockerHub repository I used the commands:

```docker tag simpleapp alexandruurlateanu/simple-app:latest``` and ```docker push alexandruurlateanu/simple-app:latest```

![Screenshot of uploading the image to DockerHub](https://github.com/alexandru-urlateanu/DevOps-Internship-Tasks/blob/main/2-simpleapp/push.JPG?raw=true)

I automated the building process with GitHub Actions by creating an [YAML file](/.github/workflows/docker-build-push.yml), where I used secrets for the DockerHub username and password.
