# Docking via Docker - Fedora 21

  Set of useful Docker command via fedora image

  **All the examples below should be done in root level**
  ```shell
  docker search [image-name]                # Search for images from Docker Hub
  docker pull [image-name]                  # Pull an image from Docker Hub

  docker ps -a                              # Show all containers
  docker images                             # Show all images

  docker build -t [name]/[tag] .            # Build image from Dockerfile

  docker run -i -t [image-name] /bin/bash   # Run image in bash
  docker start -i container_name            # Start container back in bash
  docker rm container_name                  # Remove container
  docker rmi image:tag                      # Remove image with specefic tag
  ```
