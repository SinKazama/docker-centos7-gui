FROM centos

MAINTAINER "Duc Anh Babim" <ducanh.babim@yahoo.com>

RUN rm -f /etc/motd && \
    echo "---" > /etc/motd && \
    echo "Support by Duc Anh Babim. Contact: ducanh.babim@yahoo.com" >> /etc/motd && \
    echo "---" >> /etc/motd && \
    echo "Babim Container Framework \n \l" > /etc/issue && \
    touch "/(C) Babim"
    
RUN yum update -y
    yum groupinstall "GNOME Desktop" "Graphical Administration Tools" -y
    yum install gedit file-roller firefox nano iputils tigervnc-server -y
    yum clean all

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["vncserver"]

# Expose ports.
EXPOSE 5901
