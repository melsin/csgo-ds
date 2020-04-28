# Counter-Strike: Global Offensive Dedicated Server in Docker

A collection of Dockerfiles and some scripts to quickly and easily run Counter-Strike: Global Offensive
You build all the images for `docker-compose build` from the root of the repository.

## TODO

I'd like to create a better `entrypoint.sh` for the `csgo-srcds` image. At the moment I `docker run -it --net=host csgo-srcds bash` to pop a shell in the container and manually run `srcs_run` from inside the container to start up the server. This could be done far more elegantly.
