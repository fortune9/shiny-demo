# A demo of shiny apps

Here we show how to

- write a shiny app
- how to dockerize it
- how to host a shiny app on shiny server

## How to run the app

There are multiple ways of running this shiny app.
Let's say we have downloaded this repo to a local
folder */home/ubuntu/github/shiny-demo*

```
git clone https://github.com/fortune9/shiny-demo.git /home/ubuntu/github/shiny-demo
```

- Run in R/Rstudio console
  
  ```
  shiny::runApp("/home/ubuntu/github/shiny-demo")
  ```
  
  This will start the shiny app and one can also access it at
  'http://0.0.0.0:8180'.

  However, this will not work if the host machine doesn't install
  all required dependencies, including R packages.

- Run via docker

  Build a docker image from the Dockerfile. In a bash console, run

  ```
  cd /home/ubuntu/github/shiny-demo
  docker build -t shiny-demo .
  ```

  Then start a container

  ```
  docker run --rm -it shiny-demo
  ```

  Then one can access the app in a brower at http://0.0.0.0:8180

## References

- example source: https://www.appsilon.com/post/r-shiny-docker-getting-started

