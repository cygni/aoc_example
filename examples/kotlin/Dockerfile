FROM gradle:alpine as BASE
WORKDIR /app
COPY ./ .
RUN gradle build

FROM openjdk:17-alpine
COPY --from=BASE /app/build/libs/kotlinapp-1.0.0.jar /kotlinapp.jar
COPY input.txt .
CMD java -jar /kotlinapp.jar
