FROM rockylinux:8

RUN dnf install -y java-11-openjdk-devel
RUN dnf install -y which git
COPY . /work

RUN cd /work && ./mvnw clean install -DskipTests -Djgitver.use-version=3.21
