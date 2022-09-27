# 指定基础镜像
FROM java:8
# 添加jar包
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
#COPY *.jar /app.jar

ENV JAVA_OPTS=""
ENV PARAMS=""
ENV TZ="Asia/Shanghai"
EXPOSE 32002
ENTRYPOINT [ "java $JAVA_OPTS $PARAMS -Duser.timezone=GMT+08 -jar /app.jar" ]