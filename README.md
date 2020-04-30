# Counter-Strike: Global Offensive with Docker

A collection of Dockerfiles and some scripts to quickly and easily run a Counter-Strike: Global Offensive source dedicated server from inside a Linux container with Docker (or your container runtime of choice).

## Building the images

You build all the images for `docker-compose build` from the root of the repository.

__Note:__ docker-compose is only used to manage the build dependancy. Its not used to run the service.

## TODO

I'd like to create a better `entrypoint.sh` for the `csgo-srcds` image. At the moment I `docker run -it --net=host csgo-srcds bash` to pop a shell in the container and manually run `srcs_run` from inside the container to start up the server. This could be done far more elegantly.
