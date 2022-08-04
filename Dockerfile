FROM ubuntu
MAINTAINER Valentin
ADD ["prueba.txt", "./prueba.txt"]
ADD ["./*.sh", "./"]
ENTRYPOINT ["./menu_iterativo.sh", "./prueba.txt"]

