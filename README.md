# MYKALI
A cybersecurity engeener build

docker build https://github.com/rdavid000/MYKALI.git#main:docker -t mykali
sudo docker run --name MYKALI --tty --interactive --network bridge -p 4444:22 -p 4445:8080 mykali
