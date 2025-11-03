pipeline {
    agent any

    tools {
        jdk 'jdk17'
        gradle 'gradle8'
    }

    environment {
        // Optional environment variables
        PATH = "$PATH:${tool 'gradle8'}/bin"
    }

    stages {
        stage('Checkout') {
            steps {
                // Pull the latest code from GitHub
                git branch: 'main', url: 'https://github.com/mohammad-kadri/karate-bdd-reqres-gradle.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building project...'
                sh './gradlew clean build'
            }
        }

        stage('Run Karate Tests') {
            steps {
                echo 'Executing Karate API Tests...'
                sh './gradlew test'
            }
        }

        stage('Publish Reports') {
            steps {
                junit '**/build/test-results/test/*.xml'
                archiveArtifacts artifacts: 'build/reports/**/*', fingerprint: true
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
        failure {
            echo 'Build failed. Check logs for details.'
        }
    }
}
