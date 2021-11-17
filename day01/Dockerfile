FROM gradle:alpine as BASE
WORKDIR /src
COPY ./ .
RUN gradle build

FROM openjdk:17-alpine
COPY --from=BASE /src/app/build/libs/app.jar /app.jar
COPY input.txt .
CMD java -jar /app.jar
