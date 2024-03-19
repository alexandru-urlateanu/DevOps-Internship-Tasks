I created an Ubuntu container running the command
```docker run -it --name my_linux_container ubuntu:latest```.

I created a new user john with the command ```adduser```

I retrieveD the _create_large_file.sh_ using the command ```wget https://raw.githubusercontent.com/anddragn/Useful-Resources/main/1-linux/create_large_file.sh ```.

I applied ```chmod +x``` to give the script execution permission and then I executed the script, which created the large_file in john's home directory.

