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


Create a folder `github` in the folder where you want to save your projects.

Run with mounting folder:

```cmd
docker run -v ${PWD}/github:/github --workdir /github --name vuejs-devpc -it imhotepp/vuejs-devpc:latest
```


The above command will start the `vuejs-devpc` container and attach the local folder `github` to it. It will also set the current directory to `github`. That will become your current folder for all [Vue.js](https://vuejs.org) applications.


## Development

Once the installation was finished and the `docker run ....` command executed all that is needed to start or continue development is to :
- start the Docker Dashboard, 
- search for `vuejs-devepc` and then 
- start the container. 

After the container starts just attach from visual studio code Remode - Container extension and start development

## Test the image

Assuming the container started and you are connected to it using the Remote - Container extension, open a termina from Visual Studio Code and run the following commands:

- 
    ```cmd 
    vue create my-app 
    ``` 
    and select from options Vue 2 and Yar and then wait for the installation to finish
- 
    ```cmd 
    cd my-app && yarn serve 
     ```
    once the application is up and running on port 8080 just open a browser and navigate to ```http://localhost:8080 ``` and the Vuejs app will become visible.


    Any updates you'll do inside the container from Visual Studio Code will become immediately available in the browser.


<br>
<br>
<br>
Happy Coding 

@imhotepp