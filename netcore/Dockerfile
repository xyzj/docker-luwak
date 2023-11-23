FROM xyzj/luwak-lite:latest
LABEL maintainer="X.Minamoto"
ENV DEBIAN_FRONTEND=noninteractive LANG=C.UTF-8

RUN	/usr/bin/apt-get -y update; \
	/usr/bin/apt-get -y clean; \
	/usr/bin/apt-get -y autoclean; \
	rm -rf /tmp/*

COPY	buildfiles /opt/

RUN	mkdir /.local; \
	chown xyzj:xyzj -R /opt/bin; \
	echo 'export DOTNET_ROOT=/opt/dotnet' >> /root/.bashrc; \
	echo 'export PATH=$PATH:$DOTNET_ROOT:/opt/bin' >> /root/.bashrc; \
	echo 'export DOTNET_ROOT=/opt/dotnet' >> /home/xyzj/.bashrc; \
    echo 'export PATH=$PATH:$DOTNET_ROOT:/opt/bin' >> /home/xyzj/.bashrc

USER	xyzj

ENTRYPOINT ["/opt/bin/run.sh"]
