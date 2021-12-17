FROM ubuntu:latest

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y lubuntu-desktop gdm3 passwd sudo

RUN rm /run/reboot-required*

###### MANAGE USERS ######
# change root password
RUN echo "root:root" | sudo chpasswd

# create wincc user
RUN useradd -m wincc

# set user password to wincc
RUN echo "wincc:wincc" | sudo chpasswd

# add to wheel
RUN usermod -aG sudo wincc

#ENV DISPLAY=host.docker.internal:0.0

CMD service dbus start



