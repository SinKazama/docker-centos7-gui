FROM babim/centos7base

RUN yum groupinstall "GNOME Desktop" "Graphical Administration Tools" -y && \
    yum install gedit file-roller firefox nano iputils tigervnc-server -y && \
    yum clean all

# Define default command.
RUN echo '#!/bin/bash' > /startup.sh && \
    echo "rm -rf /tmp/.X*" >> /startup.sh && \
    echo "vncserver :1" >> /startup.sh && \
    echo "bash" >> /startup.sh && chmod +x /startup.sh
    
CMD ["/startup.sh"]

# Expose ports.
EXPOSE 5901
