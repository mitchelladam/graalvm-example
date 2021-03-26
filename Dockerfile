FROM ghcr.io/graalvm/graalvm-ce:21.0.0

RUN gu install native-image

RUN microdnf install wget

RUN wget https://apache.mirrors.nublue.co.uk/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz

RUN tar -xvf apache-maven-3.6.3-bin.tar.gz -C /opt

ENV PATH="/opt/apache-maven-3.6.3/bin:${PATH}"