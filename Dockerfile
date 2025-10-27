FROM openjdk:17-jdk-slim
WORKDIR /app
COPY build /app/build
CMD ["java", "-cp", "build", "com.example.HelloWorld"]
