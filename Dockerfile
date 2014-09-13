FROM ubuntu:14.04
RUN apt-get update && apt-get -y install wget && apt-get upgrade -y
ADD http://support.mathias-kettner.de/1.2.5i5p3/omd-1.2.5i5p3.dmmk_0.trusty_amd64.deb /
RUN dpkg -i  omd-1.2.5i5p3.dmmk_0.trusty_amd64.deb
