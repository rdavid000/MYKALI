FROM kalilinux/kali-rolling
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -yq
RUN apt-get install openssh-server git -yq
RUN apt-get clean -y
RUN useradd -s /bin/bash -m r2d2
RUN echo 'r2d2:1234' | chpasswd
RUN echo 'root:1234' | chpasswd
RUN mkdir /root/git_install
RUN cd /root/git_install
RUN git clone https://github.com/rdavid000/MYKALI.git
RUN sleep 5
RUN chmod +x /root/git_install/MYKALI/firstboot.sh
RUN /bin/bash /root/git_install/MYKALI/firstboot.sh
CMD service ssh restart && /bin/bash /root/git_install/MYKALI/setup.sh ; /bin/bash
