
# Setup

To run the server make sure that docker and docker-compose are installed on the host machine.

Once they are installed, make sure the ```setup.sh``` file has settings for execution: ```chmod +x setup.sh```

You can do the same with the other script files for later use: ```chmod +x run.sh logs.sh stop.sh```

Run the setup file: ```./setup.sh```

```Ctrl+C``` to exit the logs from the ```setup.sh``` script

# Files

Wordpress config and data files: ```./docker/wordpress/data```

MySQL database config and data files: ```./docker/db/data```

## .env files

These files contain the environment values for the docker services. Please edit these files and change the values to your own passwords.

*  ```.db.env```
*  ```.wordpress.env```
*  ```.phpmyadmin.env```

# Sevices

Wordpress is hosted at: ```http://localhost:8080/```

PHPMyAdmin is hosted at: ```http://localhost:8090/```

MySQL database is exposed on port: ```3306```

# Docker Compose commands

```
docker-compose -f docker-compose.yaml ps
docker-compose -f docker-compose.yaml up
docker-compose -f docker-compose.yaml up -d
docker-compose -f docker-compose.yaml start
docker-compose -f docker-compose.yaml stop
docker-compose -f docker-compose.yaml logs -f
```