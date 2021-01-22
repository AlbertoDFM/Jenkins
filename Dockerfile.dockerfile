FROM jenkins/jenkins:lts
LABEL maintainer="Afuentem"

COPY jenkins.yml /var/jenkins_home/casc_configs/jenkins.yml

#CONFIGURATION AS CODE
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc_configs/jenkins.yml

#INSTALL PLUGINS
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

