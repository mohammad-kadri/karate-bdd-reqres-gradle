FROM gradle:8.9.0-jdk17-alpine
WORKDIR /app
COPY . .
RUN gradle clean test
