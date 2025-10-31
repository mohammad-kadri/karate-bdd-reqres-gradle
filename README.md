# Karate BDD API Testing Framework - ReqRes (Gradle Version)

## 🚀 Overview
This project demonstrates REST API testing using the ReqRes demo API with Karate BDD and Gradle.

## 🧩 Stack
- Java 17
- Gradle
- Karate BDD
- JUnit 5
- Jenkins & GitHub Actions
- Docker

## 🏗️ Run Locally
```bash
./gradlew clean test
```

## 🧪 Run in Docker
```bash
docker build -t karate-reqres-gradle .
docker run karate-reqres-gradle
```

## 🔁 Run in CI/CD
- GitHub Actions: .github/workflows/karate-ci.yml
- Jenkins: Jenkinsfile
