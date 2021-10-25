FROM gradle:7.2.0-jdk17 as BASE
WORKDIR /src
COPY ./ .
RUN gradle build

FROM openjdk:17
COPY --from=BASE /src/app/build/libs/app.jar /app.jar
CMD java -jar /app.jar
