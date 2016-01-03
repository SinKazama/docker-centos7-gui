FROM babim/centos7base

RUN yum groupinstall "GNOME Desktop" "Graphical Administration Tools" -y && \
    yum install gedit file-roller firefox nano iputils tigervnc-server -y && \
    yum clean all

# Define default command.
RUN echo "bash" > /startup.sh && echo "vncserver" >> /startup.sh && echo "/usr/sbin/sshd -D" >> /startup.sh && chmod +x /startup.sh
CMD ["/startup.sh"]

# Expose ports.
EXPOSE 5901
