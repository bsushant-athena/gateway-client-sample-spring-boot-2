FROM docker.artifactory.aws.athenahealth.com/athenahealth-base-centos7:0.0.7
MAINTAINER P2AG <p2ag@athenahealth.com>

# Install Java
RUN yum -y update && yum install -y java 1.8

#ENV JAVA_OPTS="-Xms256m -Xmx512m -XX:-TieredCompilation -Xss256k -XX:+UseG1GC -XX:+UseStringDeduplication"

COPY ./java-gateway-client-sample-2-0.0.2-SNAPSHOT-spring-boot-2.jar /usr/local/athena/eureka-client.jar

CMD ["/usr/bin/java", \
	"-Xms256M", \
	"-Xmx256M", \
	"-XX:-TieredCompilation", \
	"-Xss256k", \
	"-XX:+UseG1GC", \
	"-XX:+UseStringDeduplication", \
	"-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=1044", \
	"-jar", "/usr/local/athena/eureka-client.jar" , "com.athena.platform.gatewayclient.sample.AthenaEurekaClient"]
