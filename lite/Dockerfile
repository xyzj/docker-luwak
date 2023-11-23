FROM ubuntu:latest

LABEL maintainer="X.Minamoto"
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8

RUN	/usr/bin/apt-get -y update; \
	/usr/bin/apt-get -y install apt-utils software-properties-common; \
	/usr/bin/apt-get -y full-upgrade; \
	/usr/bin/apt-get -y install p7zip-full net-tools nano tzdata screen unzip unrar curl cron bmon nethogs dnsutils iftop iptraf-ng sudo iputils-ping telnet wget; \
	/usr/bin/apt-get -y autoremove; \
	/usr/bin/apt-get -y clean; \
	/usr/bin/apt-get -y autoclean
	
RUN	rm -rf /tmp/*; \
	ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; \
	echo "Asia/Shanghai" > /etc/timezone; \
	dpkg-reconfigure -f noninteractive tzdata; \
	/bin/echo "net.ipv4.tcp_fastopen=3">>/etc/sysctl.conf; \
	/bin/echo "net.ipv4.ip_forward=1">>/etc/sysctl.conf; \
	/bin/echo "net.ipv6.ip_forward=1">>/etc/sysctl.conf; \
	useradd -m -d /home/xyzj -s /bin/bash -u 1000 xyzj && \
	adduser xyzj sudo; \
	echo 'root:rodoss2-12' | chpasswd; \
	echo 'xyzj:programs33810' | chpasswd

#USER xyzj

#COPY	buildfiles /root/
# CMD			/usr/sbin/sshd -D

#ENTRYPOINT	["/root/svr/bin/run.sh"]
