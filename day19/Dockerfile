FROM gradle:jdk11 as BASE
WORKDIR /app
COPY ./ .
RUN gradle build
RUN pwd
RUN ls -la build/libs

FROM openjdk:11
COPY --from=BASE /app/build/libs/kotlinapp-1.0.0.jar /kotlinapp.jar
COPY input.txt .
CMD java -jar /kotlinapp.jar
