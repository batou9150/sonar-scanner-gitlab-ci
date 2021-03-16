# sonar-scanner-gitlab-ci

generate a default `sonar-project.properties` with gitlab-ci env vars

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
