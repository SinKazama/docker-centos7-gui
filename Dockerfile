FROM babim/centos7base

MAINTAINER "Duc Anh Babim" <ducanh.babim@yahoo.com>
    
RUN yum groupinstall "GNOME Desktop" "Graphical Administration Tools" -y && \
    yum install gedit file-roller firefox nano iputils tigervnc-server -y && \
    yum clean all

# Define default command.
CMD ["vncserver"]

# Expose ports.
EXPOSE 5901
ENV LC_ALL en_US.UTF-8
ENV TZ Asia/Ho_Chi_Minh
