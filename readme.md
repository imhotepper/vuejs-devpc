# Vue.js docker local development

## Introduction

This dockerfile was created for developers who want to try vuejs or want to develop vue.js applications without installing @vue/cli on their pcs or laptops.

It has already installed: [nodejs](https://www.npmjs.com), [npm](https://www.npmjs.com/), [git](https://git-scm.com/) and [@vue/cli](https://vuejs.org/).


## Prerequisites

- [Docker](https://www.docker.com/) must be installed on the local machine
- [Visual Studio Code](https://code.visualstudio.com/) must be installed on local machine
- [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)for Visual Studio Code must be installed on local machine
- [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur) - nice to have Visual Studio Code extension

## Installation

Download the image from Docker Hub:
```cmd
docker pull vuejs-devpc
```

Create a folder github in the folder from where you want to start the docker container image.

Run with mounting folder:
```cmd
docker run -v ${PWD}/github:/github --workdir /github --name vuejs-devpc -it vuedev:latest
```



## Development

Once the installation was finished and the `docker run ....` command executed all that is needed to start or continue development is to start the Docker Dashboard, search for `vuejs-devepc` and then start the container. After the container starts just attach from visual studio code and start development

<br>
<br>
Happy Coding 

@imhotepp