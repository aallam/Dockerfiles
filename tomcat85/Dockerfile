FROM aallam/oracle-java
MAINTAINER aallam

ENV DEBIAN_FRONTEND noninteractive
ENV TOMCAT_MAJOR_VERSION=8
ENV TOMCAT_VERSION=8.5.14
ENV TOMCAT_HOME=/opt/tomcat

WORKDIR /tmp

RUN groupadd tomcat && \
    useradd -s /bin/false -g tomcat -d $TOMCAT_HOME tomcat && \
    mkdir $TOMCAT_HOME && \
    wget http://mirrors.standaloneinstaller.com/apache/tomcat/tomcat-$TOMCAT_MAJOR_VERSION/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz && \
    tar xzvf apache-tomcat-8*tar.gz -C $TOMCAT_HOME --strip-components=1 && \
    chown -R tomcat:tomcat $TOMCAT_HOME && \
    chmod -R g+r $TOMCAT_HOME/conf && \
    chmod g+x $TOMCAT_HOME/conf && \
    rm -rf apache-tomcat-$TOMCAT_VERSION.tar.gz

WORKDIR /

ADD tomcat-run.sh /tomcat-run.sh
ADD settings.xml $TOMCAT_HOME/conf/settings.xml
ADD tomcat-users.xml $TOMCAT_HOME/conf/tomcat-users.xml
ADD context.xml $TOMCAT_HOME/webapps/manager/META-INF/context.xml
RUN chmod 755 /*.sh

VOLUME ["/opt/tomcat/logs"]

ENTRYPOINT ["sh","-c","${TOMCAT_HOME}/bin/catalina.sh", "run"]

EXPOSE 8080
