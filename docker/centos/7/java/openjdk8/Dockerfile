# 依赖镜像名称和ID
FROM centos:7
# 指定镜像创建者信息
LABEL maintainer="Peter Zhang <zhangchunsheng423@gmail.com>"

RUN yum install java-1.8.0-openjdk-devel -y

# 配置java环境变量
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.292.b10-1.el7_9.x86_64
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib:$CLASSPATH
ENV PATH $JAVA_HOME/bin:$PATH