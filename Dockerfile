FROM babim/centos7base:ssh

MAINTAINER "Duc Anh Babim" <ducanh.babim@yahoo.com>
    
RUN yum groupinstall "GNOME Desktop" "Graphical Administration Tools" -y && \
    yum install gedit file-roller firefox nano iputils tigervnc-server openssh-server -y && \
    yum clean all

ENV AUTHORIZED_KEYS **None**
ENV LC_ALL en_US.UTF-8
ENV TZ Asia/Ho_Chi_Minh
# Define working directory.
WORKDIR /data

# Define default command.
CMD ["vncserver"]

# Expose ports.
EXPOSE 5901 22
CMD ["/usr/sbin/runssh.sh"]
