FROM ubuntu:14.04
RUN apt-get update && apt-get -y install \
    wget libapache2-mod-proxy-html apache2 libapache2-mod-proxy-html libapache2-mod-fcgid \
    graphviz fping dnsutils dialog curl libsnmp-python traceroute time \
    apache2-mpm-prefork apache2-utils binutils debugedit libboost-program-options1.54.0 \
    libboost-system1.54.0 libdbi1 libedit2 libelf1 libevent-1.4-2 libfile-copy-recursive-perl \
    libgmp10 libldb1 liblua5.2-0 libmcrypt4 libnet-snmp-perl libnspr4 libnss3 libnss3-nssdb libntdb1 \
    libpango1.0-0 libpangox-1.0-0 libpcap0.8 libpython2.7 libradiusclient-ng2 libreadline5 librpm3 \
    librpmbuild3 librpmio3 librpmsign1 libsmbclient libsnmp-perl libtalloc2 libtdb1 libtevent0 libwbclient0 \
    lsof patch php-pear php5-cgi php5-cli php5-common php5-gd php5-json php5-mcrypt php5-readline php5-sqlite \
    pyro python-crypto python-ldap python-ldb python-ntdb python-samba python-support python-talloc python-tdb \
    rpm rpm-common rpm2cpio rsync samba-common samba-common-bin samba-libs smbclient snmp unzip update-inetd xinetd \
 && apt-get upgrade -y
ADD http://support.mathias-kettner.de/1.2.5i5p3/omd-1.2.5i5p3.dmmk_0.trusty_amd64.deb /
#RUN apt-get install -y gdebi
RUN dpkg -i ./omd-1.2.5i5p3.dmmk_0.trusty_amd64.deb
