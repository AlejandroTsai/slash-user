# 指定基础镜像
FROM java:8
# 添加jar包
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
#COPY *.jar /app.jar

EXPOSE 32001
ENTRYPOINT ["java", "-jar", "/app.jar" ]