#!/bin/sh
exec java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar ./dockerize-spring.jar

