FROM ubuntu:latest
RUN apt-get update --yes
RUN apt-get upgrade --yes
RUN apt-get install inetutils-ping --yes
RUN apt-get install git --yes
RUN apt-get install wget --yes
RUN apt-get install build-essential --yes
RUN apt-get install kmod --yes
RUN apt-get install python3 --yes
RUN apt-get install curl --yes
RUN apt-get install unzip --yes
RUN apt-get install p7zip-full --yes
RUN mkdir /home/app
WORKDIR /home/app
#COPY main.c /home/app/main.c
#RUN gcc /home/app/main.c -o /home/app/main.o
COPY entrypoint.sh /home/app/entrypoint.sh
ENTRYPOINT ["sh","entrypoint.sh"]
