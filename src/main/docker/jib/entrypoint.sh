#!/bin/sh

echo "The application will start in ${INHOME_SLEEP}s..." && sleep ${INHOME_SLEEP}
exec java ${JAVA_OPTS} -noverify -XX:+AlwaysPreTouch -Djava.security.egd=file:/dev/./urandom -cp /app/resources/:/app/classes/:/app/libs/* "com.sunshineoxygen.inhome.Application"  "$@"
