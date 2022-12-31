FROM kalilinux/kali-rolling
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -yq
RUN apt-get install openssh-server -yq
RUN apt-get clean -y
RUN useradd -s /bin/bash -m r2d2
RUN echo 'r2d2:4365' | chpasswd 
RUN echo 'root:4365' | chpasswd 
RUN service ssh start
CMD service ssh restart
