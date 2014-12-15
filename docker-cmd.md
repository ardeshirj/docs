# Docking via Docker - Fedora 21

  Set of useful Docker command via fedora image

  **All the examples below should be done in root level**
  ```docker
  docker ps -a                              # Show all containers
  docker images                             # Show all images
  docker run -i -t [image-name] /bin/bash   # Start container in bash (assume container is linux)
  docker start -i container_name            # Start container back in bash (interactive)
  docker rm container_name                  # Remove container
  docker rmi image:tag                      # Remove image with specefic tag
  ```
