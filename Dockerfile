FROM alpine
RUN apk add --no-cache alpine-sdk openjdk8
ENV JAVA8_HOME /usr/lib/jvm/default-jvm
ENV JAVA_HOME $JAVA8_HOME


RUN apk update \
	apk add openssh curl unzip mc openrc firefox-esr sudo \
	rc-update add sshd \
	touch /run/openrc/softlevel \
	/etc/init.d/sshd start \
	adduser sae \ 
	echo -e "test2018\ntest2018" | passwd sae \
	echo "sae    ALL=(ALL) ALL" >> /etc/sudoers  
	
	
