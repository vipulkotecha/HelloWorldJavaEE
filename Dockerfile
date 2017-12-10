FROM jetty:9.3-jre8-alpine

RUN apk add --no-cache bash
ENV JETTY_HOME /usr/local/jetty
ENV JETTY_BASE /var/lib/jetty

COPY target/HelloWorldJavaEE.war $JETTY_BASE/webapps/HelloWorldJavaEE.war

EXPOSE 8080
WORKDIR $JETTY_BASE