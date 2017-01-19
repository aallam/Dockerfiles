FROM aallam/oracle-java:8

MAINTAINER aallam

WORKDIR /tmp

COPY wildfly-8.2.0.Final.tar.gz.sha1 .

RUN groupadd -r jboss -g 1000 && \ 
    useradd -u 1000 -r -g jboss -m -d /opt/jboss -s /sbin/nologin -c "JBoss user" jboss && \
    chmod 755 /opt/jboss && \
    chown jboss:jboss wildfly-8.2.0.Final.tar.gz.sha1

USER jboss

ENV JBOSS_HOME /opt/jboss/wildfly-8

RUN wget http://download.jboss.org/wildfly/8.2.0.Final/wildfly-8.2.0.Final.tar.gz && \
    sha1sum -c wildfly-8.2.0.Final.tar.gz.sha1 && \
    tar xf wildfly-8.2.0.Final.tar.gz && \
    mv wildfly-8.2.0.Final $JBOSS_HOME && \
    rm wildfly-8.2.0.Final.tar.gz* && \
    cd $JBOSS_HOME/standalone/configuration/ && \
    sed -i 's/<core-environment>/<core-environment node-identifier="wildfly8">/g' standalone.xml && \
    cd /

WORKDIR /

ENV LAUNCH_JBOSS_IN_BACKGROUND true

EXPOSE 8080

CMD ["/opt/jboss/wildfly-8/bin/standalone.sh", "-b", "0.0.0.0"]
