gitpipeline {
  agent any
  stages {
    stage('Checkout') {
      steps { checkout scm }
    }
    stage('Build & Test') {
      steps {
        sh './gradlew clean test'
      }
    }
    stage('Publish Report') {
      steps {
        junit '**/build/test-results/test/*.xml'
      }
    }
  }
  post {
          always {
              echo 'Pipeline execution completed.'
          }
      }
}
