FROM openjdk:11
ENV JAVA_OPTS="-Xmx256m -Xms256m"

COPY build/libs/dockerize-0.0.1.jar /opt/app.jar
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 777 /opt/app.jar
RUN chmod 777 /docker-entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/docker-entrypoint.sh"]
