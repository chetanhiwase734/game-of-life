/*FROM tomcat:latest

LABEL maintainer="chetan-hiwase"

ADD ./gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]*?
