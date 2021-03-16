# batou9150/sonar-scanner-gitlab-ci

![Docker Pulls](https://img.shields.io/docker/pulls/batou9150/sonar-scanner-gitlab-ci.svg)
![Docker Stars](https://img.shields.io/docker/stars/batou9150/sonar-scanner-gitlab-ci.svg)
[Docker Hub](https://hub.docker.com/r/batou9150/sonar-scanner-gitlab-ci/) 

Generate a default `sonar-project.properties` with gitlab-ci env vars

## usage in .gitlab-ci.yml

```
variables:
  SONAR_HOST_URL: "http://my-sonarqube:9000"

sonar:
  image: 
    name: batou9150/sonar-scanner-gitlab-ci
    entrypoint: [""]
  script: 
    - confd -onetime -backend env
    - sonar-scanner
  allow_failure: true
```
