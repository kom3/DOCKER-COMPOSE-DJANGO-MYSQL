FROM python:3.6
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y libsasl2-dev python-dev libldap2-dev libssl-dev psmisc libpq-dev
RUN apt-get -y install python3-pip
RUN mkdir /mydir
WORKDIR /mydir
ADD req.txt /mydir/
RUN pip install -r req.txt
ADD Katanaframework /mydir/Katanaframework
