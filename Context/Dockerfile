FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
	dnsmasq \
	wget \
	&& apt-get clean \
 	&& rm -rf /var/lib/apt/lists/* \
	&& echo -e 'no-resolv\nno-poll\nserver=/37.235.1.177/' > /etc/dnsmasq.conf \
	&& wget https://raw.githubusercontent.com/chris-costello6/dnsmasq-docker/master/block-lame.conf -O /etc/dnsmasq.d/block-lame.conf\ 
	&& echo 'no-resolv\nno-poll\nuser=root\nserver=/37.235.1.177/' > /etc/dnsmasq.conf \
	&& cat /etc/dnsmasq.conf

EXPOSE 53
ENTRYPOINT ["dnsmasq"]
