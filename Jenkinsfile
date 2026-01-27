pipeline {
    agent any

    environment {
        AUTH_IMAGE = "auth-service:1.0"
        STUDENT_IMAGE = "student-service:1.0"
        GATEWAY_IMAGE = "api-gateway:1.0"
    }

    stages {

        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/faiz-devops2026/user-student-management-system.git'
            }
        }

        stage('Build Auth Service (Maven)') {
            steps {
                dir('auth-module') {
                    bat 'mvn clean package -DskipTests'
                }
            }
        }

        stage('Build Student Service (Maven)') {
            steps {
                dir('student-module') {
                    bat 'mvn clean package -DskipTests'
                }
            }
        }

        stage('Build API Gateway (Maven)') {
            steps {
                dir('api-gateway') {
                    bat 'mvn clean package -DskipTests'
                }
            }
        }

        stage('Build Docker Images') {
            steps {
                bat '''
                docker build -t %AUTH_IMAGE% auth-module
                docker build -t %STUDENT_IMAGE% student-module
                docker build -t %GATEWAY_IMAGE% api-gateway
                '''
            }
        }

        /* ================= KUBERNETES DEPLOYMENT ================= */

        stage('Deploy to Kubernetes') {
            steps {
                bat '''
                kubectl apply -f k8s/
                kubectl rollout status deployment/auth-deployment
                kubectl rollout status deployment/student-deployment
                '''
            }
        }
    }

    post {
        success {
            echo '✅ Maven + Docker + Kubernetes deployment completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed. Check logs.'
        }
    }
}
