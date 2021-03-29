FROM ghcr.io/graalvm/graalvm-ce:21.0.0

RUN microdnf install wget

RUN wget https://github.com/graalvm/graalvm-ce-dev-builds/releases/download/21.1.0-dev-20210325_0249/graalvm-ce-java11-linux-amd64-dev.tar.gz

RUN mkdir /temp

RUN tar -xvf graalvm-ce-java11-linux-amd64-dev.tar.gz -C /temp

RUN rm -rf /opt/graalvm-ce-java11-21.0.0

RUN mv /temp/graalvm-ce-java11-21.1.0-dev /opt/graalvm-ce-java11-21.0.0

RUN gu install native-image

RUN wget https://apache.mirrors.nublue.co.uk/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz

RUN tar -xvf apache-maven-3.6.3-bin.tar.gz -C /opt

ENV PATH="/opt/apache-maven-3.6.3/bin:${PATH}"