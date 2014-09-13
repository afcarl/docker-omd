FROM ubuntu:14.04
RUN apt-get update && apt-get -y install \
    wget libapache2-mod-proxy-html apache2 libapache2-mod-proxy-html libapache2-mod-fcgid \
    graphviz fping dnsutils dialog curl libsnmp-python traceroute time \
 && apt-get upgrade -y
ADD http://support.mathias-kettner.de/1.2.5i5p3/omd-1.2.5i5p3.dmmk_0.trusty_amd64.deb /
RUN apt-get install  gdebi
RUN sudo gdebi omd-1.2.5i5p3.dmmk_0.trusty_amd64.deb 
RUN apt-get install -f
