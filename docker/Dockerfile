FROM kalilinux/kali-rolling
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -yq
RUN apt-get install openssh-server wget -yq
RUN apt-get clean -y
RUN useradd -s /bin/bash -m r2d2
RUN echo 'r2d2:1234' | chpasswd
RUN echo 'root:1234' | chpasswd
RUN mkdir -p /root/git_install
RUN wget https://github.com/rdavid000/MYKALI/blob/main/startup/firstboot.sh -O /root/git_install/firstboot.sh
RUN wget https://github.com/rdavid000/MYKALI/blob/main/startup/start.sh -O /root/git_install/start.sh
RUN chmod +x /root/git_install/firstboot.sh && chmod +x /root/git_install/start.sh
RUN /bin/bash /root/git_install/firstboot.sh
CMD service ssh start && /bin/bash /root/git_install/start.sh ; /bin/bash