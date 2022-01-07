### INIT ###
# select first repo
FROM centos:latest

# set default shell
SHELL ["/bin/bash","-c"]

# add software folder
ADD software /software

# install dependencies
RUN yum install -y epel-release
RUN yum install -y --skip-broken `cat /software/dependencies.txt`

### WINCC OA INSTALLATION ###
# import keys
RUN rpm --import software/src/public.key
RUN rpm --import software/src/vimaccoa.key

# install wincc oa
RUN yum install -y software/src/*.rpm

### POST INSTALLATION ###
# clean cache
RUN yum clean all

# set PID docker
RUN systemd-machine-id-setup

# add config folder
ADD config /config

# create symbolic link with config + setup env variables
RUN ln -s /opt/WinCC_OA/3.17 /opt/WinCC_OA/current; \
cat /config/env.sh >> /etc/environment; \
cat /config/env.sh >> /etc/profile.d/winccoa.sh; \
[ ! -f /config/shield.txt ] || cp /config/shield.txt /opt/WinCC_OA/current/;

# add binaries
ENV PATH="/opt/WinCC_OA/current/bin:/config:${PATH}"

# register console
#CMD ["WCCILpmon", "-autoreg", "-config", "/proj/default/config/config"]
