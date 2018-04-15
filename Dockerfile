FROM alpine
RUN apk add --no-cache alpine-sdk openjdk8
ENV JAVA8_HOME /usr/lib/jvm/default-jvm
ENV JAVA_HOME $JAVA8_HOME


RUN apk update 
RUN 	apk add openssh curl unzip mc openrc firefox-esr sudo 
RUN 	rc-update add sshd 
RUN 	touch /run/openrc/softlevel 
RUN 	/etc/init.d/sshd start 
RUN 	adduser sae 
RUN 	echo -e "test2018\ntest2018" | passwd sae 
RUN 	echo "sae    ALL=(ALL) ALL" >> /etc/sudoers

	
	
