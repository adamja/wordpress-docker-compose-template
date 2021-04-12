#!/bin/bash


# Create the directories for the docker container data
mkdir -p docker/wordpress/data
mkdir -p docker/db/data
# mkdir -p docker/letsencrypt/nginx/htpasswd/
# mkdir -p docker/letsencrypt/nginx/conf.d/
# mkdir -p docker/letsencrypt/nginx/vhost.d/
# mkdir -p docker/letsencrypt/nginx/html/
# mkdir -p docker/letsencrypt/nginx/certs/


# Create .env files from examples
env_files=(".db.env" ".wordpress.env" ".phpmyadmin.env")

for file in ${env_files[@]}; do
    if [ -f ./$file ]; then 
        echo "$file already exists.";
    else
        echo "$file does not exist. Creating the file from an example file. Please edit the values to your own settings.";
        cp $file.example $file;
    fi
done


# Create the wordpress docker network
docker network create wordpress


# Run docker-compose and run the services
docker-compose -f docker-compose.yaml build
docker-compose -f docker-compose.yaml up -d
docker-compose -f docker-compose.yaml logs -f
