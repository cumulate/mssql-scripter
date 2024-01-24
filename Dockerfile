FROM python:3.6

RUN \
  pip install --upgrade pip

RUN \
  pip install  mssql-scripter

RUN  apt-get update
RUN  apt-get install  -ylibunwind8
#sudo nano /etc/apt/sources.list
#add deb http://security.ubuntu.com/ubuntu bionic-security main
# Add the new repository line to sources.list
RUN echo "deb http://security.ubuntu.com/ubuntu bionic-security main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32
RUN apt update && apt-cache policy libssl1.0-dev
RUN apt-get install -y libssl1.0-dev

