## Apache2 with php7.0 on Ubuntu 16.04 LTS

This is a docker images with Common php7.0 settings

To access site contents from utside the container you should map /var/www

### Examples

- plain, accessable on port 8080 `docker run -d -p 8080:80 devlion/apache2-php7.0`
- with external contents in /home/devlion/html `docker run -d -p 8080:80 -v /home/devlion/html:/var/www/html devlion/apache2-php7.0`

The docker container is started with the -d flag so it will run inte the background. To run commands or edit settings inside
the container run `docker exec -ti <container id> /bin/bash'
 
