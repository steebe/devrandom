# Docker on Debian/Linux

## Installation
First, uninstall old versions

```shell
$ sudo apt-get remove docker docker-engine docker.io containerd runc
```

Then set up the repository, first by grabbing the necessary utilities

```shell
$ sudo apt-get update
$ sudo apt-get install ca-certificates curl gnupg lsb-release
```

And grabbing Docker's GPG key for security of downloads

```shell
$ sudo mkdir -p /etc/apt/keyrings
$ curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

And lastly, setting up the Docker official repository

```shell
$ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

Before finally grabbing Docker artifacts

```shell
$ sudo apt-get update
$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

And voila...

```shell
$ sudo docker run hello-world
```

## Next steps

To allow your base, non-root user to start using the Docker service, you have to add them to the `docker` group:

```shell
$ sudo groupadd docker
$ sudo usermod -aG docker $USER
```

## Docker Compose

Though the installation steps above include a docker-compose-plugin artifact, that simply establishes the `docker compose` alias within the Docker binaries.
To take advantage of the older `docker-compose` behavior, download a copy from GitHub and quickly configure it with:

```shell
$ sudo curl -L https://github.com/docker/compose/releases/download/v2.10.2/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
$ docker-compose --version
```

### References
- https://docs.docker.com/engine/install/debian/
- https://docs.docker.com/engine/install/linux-postinstall/
