# bal build can instead build docker images directly from the commandline
FROM ballerina/ballerina
RUN mkdir /home/ballerina/app
WORKDIR /home/ballerina/app
COPY Ballerina.toml .
COPY ./*.bal .
COPY input.txt .
RUN bal build
CMD ["bal", "run", "target/bin/app.jar"]