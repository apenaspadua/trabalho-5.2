FROM openjdk:11
COPY OlaUnicamp.java .
RUN javac OlaUnicamp.java
CMD ["java", "OlaUnicamp"]
