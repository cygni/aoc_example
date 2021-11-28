FROM openjdk:bullseye
RUN apt update
RUN apt install -y default-jdk
RUN curl -fLo cs https://git.io/coursier-cli-linux
RUN chmod +x cs
RUN ./cs install cs
RUN ./cs setup -y
RUN pwd
RUN export PATH="$PATH:/root/.local/share/coursier/bin"
RUN . ~/.bashrc
RUN /root/.local/share/coursier/bin/cs install scala3
RUN /root/.local/share/coursier/bin/cs install scala3-compiler

WORKDIR /app
COPY . /app
RUN /root/.local/share/coursier/bin/scala3-compiler Main.scala

CMD /root/.local/share/coursier/bin/scala3 Main
