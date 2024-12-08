## What is Php development with Docker?
This document is about establishing a PHP development environment using a docker.

### What's in it?
+ Php 8.0 (APACHE)
+ MYSQL (PDO)

### Install docker
[Get Docker](https://www.docker.com/)


### Install WSL 2 [Why?](https://learn.microsoft.com/en-us/windows/wsl/)
```cmd
wsl --install
```

### Stop the server
Open the command client in the directory where `dockerfile` and `docker-Compose.yml` files are located and stop the command below.

```cmd
docker-compose down
```

### Reaching the phpmyadmin panel
```php
Address: 127.0.0.1:8081 // Line 28th in docker-compose.yml.
Server Name: mysql_db // Line 30th in docker-compose.yml.
Username: user // Line 17th in docker-compose.yml.
Password: root // Line 18th in docker-compose.yml.
```

### Accessing the HTDOCS directory
```php
Address: 127.0.0.1:8080 // Line 5th in docker-compose.yml.
```

### If you want to define the project directory in another position
For this, the 7th line in the `docker-compose.yml file must be updated.If you pay attention to this line, there are two different ways separated by `:`: The first way is the directory of the directory you want to define, and the second is the directory of the Docker server.You should organize the first way.By default, the location of Docker files is defined.
```php
.:/var/www/html
```