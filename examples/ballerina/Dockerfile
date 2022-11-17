# bal build can instead build docker images directly from the commandline
FROM ubuntu
RUN apt-get update
RUN apt -y install default-jdk
RUN mkdir -p /home/ballerina/app/target/bin
WORKDIR /home/ballerina/app
ADD https://dist.ballerina.io/downloads/2201.2.3/ballerina-2201.2.3-swan-lake-linux-x64.deb bal.deb
RUN dpkg -i bal.deb
COPY Ballerina.toml .
COPY ./*.bal .
COPY input.txt .
RUN bal build
CMD ["bal", "run", "target/bin/app.jar"]