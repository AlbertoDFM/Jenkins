FROM jenkins/jenkins:lts
LABEL maintainer="Afuentem"
#CONFIGURATION AS CODE ENVIRONMENT VARIABLE
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
#INSTALL PLUGINS
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
#COPY CONFIGURATION
COPY casc.yaml /var/jenkins_home/casc.yaml