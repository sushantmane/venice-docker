FROM  mcr.microsoft.com/openjdk/jdk:11-ubuntu

ENV VENICE_DIR=/opt/venice

RUN apt-get update
RUN apt-get install tree
RUN mkdir -p ${VENICE_DIR}

WORKDIR ${VENICE_DIR}

COPY . ${VENICE_DIR}

RUN chmod +x *.sh

CMD /bin/sh -c bash
