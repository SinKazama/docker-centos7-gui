FROM babim/centos7base:ssh

MAINTAINER "Duc Anh Babim" <ducanh.babim@yahoo.com>
    
RUN yum groupinstall "GNOME Desktop" "Graphical Administration Tools" -y && \
    yum install gedit file-roller firefox nano iputils tigervnc-server openssh-server -y && \
    yum clean all

ADD runssh.sh /usr/sbin/runssh.sh
RUN chmod +x /usr/sbin/runssh.sh
ENV AUTHORIZED_KEYS **None**
ENV LC_ALL en_US.UTF-8
ENV TZ Asia/Ho_Chi_Minh

# Expose ports.
EXPOSE 5901 22
CMD ["/usr/sbin/runssh.sh"]
