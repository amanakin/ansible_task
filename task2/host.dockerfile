FROM python:3.9-slim

RUN apt update
RUN apt install -y openssh-server openssh-client
RUN apt install -y git
RUN apt install -y docker docker-compose ansible
RUN apt install -y bash

RUN echo -n 'root:HeasfTGsdg' | chpasswd
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

RUN ssh-keygen -A

EXPOSE 22

ENTRYPOINT service ssh restart & bash