FROM openjdk:11.0.6-jre-buster
ENV KAFKA_DIR=/opt/kafka
RUN mkdir -p ${KAFKA_DIR}
WORKDIR ${KAFKA_DIR}
COPY . ${KAFKA_DIR}
CMD ["bash", "bin/kafka-server-start.sh", "config/server.properties"]