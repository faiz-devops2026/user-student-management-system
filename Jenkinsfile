pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/faiz-devops2026/user-student-management-system.git'
            }
        }

        stage('Build Auth Service') {
            steps {
                dir('auth-module') {
                    bat 'mvn clean package -DskipTests'
                }
            }
        }

        stage('Build Student Service') {
            steps {
                dir('student-module') {
                    bat 'mvn clean package -DskipTests'
                }
            }
        }

        stage('Build API Gateway') {
            steps {
                dir('api-gateway') {
                    bat 'mvn clean package -DskipTests'
                }
            }
        }
    }

    post {
        success {
            echo ' Build completed successfully!'
        }
        failure {
            echo '❌ Build failed. Check logs.'
        }
    }
}
