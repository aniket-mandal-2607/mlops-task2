FROM centos:latest
RUN yum install net-tools wget sudo java-11-openjdk.x86_64 -y
RUN sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install git jenkins python36 -y
RUN echo -e "jenkins ALL=(ALL)  NOPASSWD:ALL" >> /etc/sudoers
CMD ["java","-jar","/usr/lib/jenkins/jenkins.war"]
EXPOSE 8080
