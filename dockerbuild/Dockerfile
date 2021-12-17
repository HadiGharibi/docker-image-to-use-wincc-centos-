# Date: 05/12/2021
# Author: fedeoli
# Info: Centos with wincc oa installation and gui setup

# from CentOS distro
FROM centos:latest

# set default shell
SHELL ["/bin/bash","-c"]

ADD software /software

RUN yum install -y `cat /software/dependencies.txt`

###### MANAGE USERS ######
# change root password
RUN echo root | passwd --stdin root 

# create wincc user
RUN useradd -m wincc

# set user password to wincc
ARG user=wincc
RUN echo $user | passwd --stdin wincc

# add to wheel
RUN usermod -aG wheel wincc

### WINCC OA INSTALLATION ###
# import keys
RUN rpm --import software/src/public.key
RUN rpm --import software/src/vimaccoa.key

# install wincc oa
RUN yum install -y software/src/*.rpm

# add permissions to wincc
RUN chown -R wincc /etc/opt/pvss
RUN chmod -R 755 /etc/opt/pvss

# create project directory
RUN mkdir /opt/WinCC_OA/3.17/projects/
RUN chown -R wincc /opt/WinCC_OA/3.17/projects/
RUN chmod -R 755 /opt/WinCC_OA/3.17/projects/

# link binaries
ENV PATH="/opt/WinCC_OA/3.17/bin:/config:${PATH}"

# boh
RUN systemd-machine-id-setup

### USING ROOT USER ###
USER wincc





