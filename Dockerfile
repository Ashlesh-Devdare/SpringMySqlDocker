FROM java:8  
EXPOSE 8080
COPY . /
WORKDIR /  
CMD ["java", "-jar", "springmysqlapp-0.0.1-SNAPSHOT.jar"]