I created an Ubuntu container running the command
```docker run -it --name my_linux_container ubuntu:latest```.

I created a new user john with the command ```adduser```

I retrieved the _create_large_file.sh_ using the command ```wget https://raw.githubusercontent.com/anddragn/Useful-Resources/main/1-linux/create_large_file.sh ```.

I applied ```chmod +x``` to give the script execution permission and then I executed the script, which created the large_file in john's home directory.

![Screenshot of user creation and script running](https://github.com/alexandru-urlateanu/DevOps-Internship-Tasks/blob/main/1-linux/create%20user%20+%20run%20file%20script.png?raw=true)

I created the [bash script](/1-linux/script.sh), gave execution permission and run it.
![Screenshot of running the bash script](https://github.com/alexandru-urlateanu/DevOps-Internship-Tasks/blob/main/1-linux/script.png?raw=true)

The modifications the script made to the passwd file can be noticed below.
![Screenshot of script modifications](https://github.com/alexandru-urlateanu/DevOps-Internship-Tasks/blob/main/1-linux/passwd_modified.png?raw=true)
