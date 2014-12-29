# Docking via Docker

## Setup
  [Docker documentation](https://docs.docker.com/installation/fedora/) covers how to install docker in Fedora

## Usage
  **All the examples below should be done in root level**
  ```shell
  docker search [image-name]                # Search for images from Docker Hub
  docker pull [image-name]                  # Pull an image from Docker Hub

  docker ps -a                              # Show all containers
  docker images                             # Show all images

  docker build -t [name]/[tag] .            # Build image from Dockerfile

  docker run -i -t [image-name] /bin/bash   # Run image in bash
  docker start -i container_name            # Start container back in bash

  docker cp [image-name]:/home/test.txt ./  # Copy file from container to host

  docker rm container_name                  # Remove container
  docker rmi image:tag                      # Remove image with specefic tag
  ```
