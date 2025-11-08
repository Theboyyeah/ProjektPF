# FROM ubuntu:latest
FROM ubuntu:24.04

#dodałem by instalacja tych paczek odbywała sie bez iterakcji
#ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y openjdk-8-jdk python3 scala vim curl tar

RUN curl -L https://github.com/sbt/sbt/releases/download/v1.9.5/sbt-1.9.5.tgz | tar xz -C /usr/local

RUN ln -s /usr/local/sbt/bin/sbt /usr/bin/sbt


WORKDIR /MaciejSerafinZadanie2


#CMD ["/bin/zsh"]
