FROM debian

RUN apt-get update
RUN apt-get install -y gnu-smalltalk
COPY . /app
WORKDIR /app

CMD gst /app/main.st
