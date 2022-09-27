FROM java:8
ADD *.jar /app.jar

ENV JAVA_OPTS=""
ENV PARAMS=""
ENV TZ="Asia/Shanghai"

ENTRYPOINT [ "bash", "-c", "java $JAVA_OPTS $PARAMS -Duser.timezone=GMT+08 -jar /app.jar" ]