## What is Php development with Docker?
This document covers setting up a PHP development environment using docker on Windows 10.

### What's in it?
+ Php 8.0 (APACHE)
+ MYSQL (PDO)

### Install docker
[Get Docker](https://www.docker.com/)


### Install WSL 2 [Why?](https://learn.microsoft.com/en-us/windows/wsl/)
```cmd
wsl --install
```

### Start the server
Open the command prompt in the directory where the `dockerfile` and `docker-compose.yml` files are located and start the server by running the following command.

```cmd
docker-compose up -d
```

### Stop the server
Open a command prompt in the directory where the `dockerfile` and `docker-compose.yml` files are located and stop the server by running the following command.

```cmd
docker-compose down
```

### Reaching the phpmyadmin panel
```php
Address: 127.0.0.1:8081 // Line 28th in docker-compose.yml.
Server Name: mysql_server // Line 30th in docker-compose.yml.
Username: root 
Password: // No password
```

### Accessing the HTDOCS directory
```php
Address: 127.0.0.1:8080 // Line 5th in docker-compose.yml.
```

### If you want to define the project directory in another position
For this, the 7th line in the `docker-compose.yml` file must be updated.If you pay attention to this line, there are two different ways separated by `:`. The first way is the directory of the directory you want to define, and the second is the directory of the Docker server.You should organize the first way.By default, the location of Docker files is defined.
```php
.:/var/www/html
```