# Docker Project Container

pushed to [Docker Hub
](https://hub.docker.com/r/yuziarc/dockerproj)

Run with:

`docker run -d -p 8080:8080 yuziarc/dockerproj`

Steps:

## 1: Get Source

`git clone https://github.com/yuziarc/grp5project`


## 2: Build Container

change into the directory: 
`cd docker-hello`

`docker build . -t myhello`

## 3: Run Container

`docker run -d -p 8080:8080 myhello`
