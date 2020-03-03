#FROM openjdk:8-jdk-alpine
FROM maven:3.6.0-jdk-8
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN clean install -U
COPY . .
EXPOSE 9000
#CMD ["java","-jar","/app/ojas-obs-bankdetails-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java","-jar","/app/ojas-obs-bankdetails-0.0.1-SNAPSHOT.jar"]
