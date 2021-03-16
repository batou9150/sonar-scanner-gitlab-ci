FROM sonarsource/sonar-scanner-cli:latest

USER root

RUN  wget  https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 -O /bin/confd \
    && chmod a+x /bin/confd
ADD confd /etc/confd

USER scanner-cli
