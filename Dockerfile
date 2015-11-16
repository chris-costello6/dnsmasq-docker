RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y dnsmasq

EXPOSE 53
ENTRYPOINT ["/usr/bin/dnsmasq"]