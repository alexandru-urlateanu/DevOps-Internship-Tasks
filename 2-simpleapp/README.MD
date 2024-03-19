For this task I to work with the Python app.

I built the [Dockerfile](/2-simpleapp/Dockerfile), then I used the commands ```docker build -t simpleapp .``` to build an image from this Dockerfile.

After building the image, I ran a container with it.

To upload my image to my DockerHub repository I used the commands 
```docker tag simpleapp alexandruurlateanu/simple-app:latest``` and ```docker push alexandruurlateanu/simple-app:latest```
