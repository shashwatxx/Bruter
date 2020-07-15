FROM ubuntu:16.04
WORKDIR /usr/share/
RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list \
	&& echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list \
	&& apt-get update && apt-get install -y --allow-unauthenticated git \
	nmap \
	hydra \
	dnsenum\
	&& git clone https://github.com/shashwatxx/bruter.git bruter \
	&& chmod +x bruter/bruter \
	&& ln -s /usr/share/bruter/bruter /usr/bin/brutex

WORKDIR bruter
ENTRYPOINT ["./bruter"]

