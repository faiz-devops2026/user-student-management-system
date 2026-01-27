pipeline {
    agent any

    environment {
        AUTH_IMAGE    = "auth-service:${BUILD_NUMBER}"
        STUDENT_IMAGE = "student-service:${BUILD_NUMBER}"
        GATEWAY_IMAGE = "api-gateway:${BUILD_NUMBER}"
        KUBECONFIG    = "C:/Users/faizt/.kube/config"
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
                bat """
                docker build -t %AUTH_IMAGE% auth-module
                docker build -t %STUDENT_IMAGE% student-module
                docker build -t %GATEWAY_IMAGE% api-gateway
                """
            }
        }

        stage('Update Kubernetes Manifests') {
            steps {
                bat """
                powershell -Command "(Get-Content k8s/auth-deployment.yaml) -replace 'auth-service:.*', 'auth-service:${BUILD_NUMBER}' | Set-Content k8s/auth-deployment.yaml"
                powershell -Command "(Get-Content k8s/student-deployment.yaml) -replace 'student-service:.*', 'student-service:${BUILD_NUMBER}' | Set-Content k8s/student-deployment.yaml"
                powershell -Command "(Get-Content k8s/api-gateway-deployment.yaml) -replace 'api-gateway:.*', 'api-gateway:${BUILD_NUMBER}' | Set-Content k8s/api-gateway-deployment.yaml"
                """
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                bat """
                kubectl apply -f k8s/
                kubectl rollout status deployment/auth-deployment
                kubectl rollout status deployment/student-deployment
                kubectl rollout status deployment/gateway-deployment
                """
            }
        }
    }

    post {
        success {
            echo '✅ CI/CD pipeline completed successfully!'
        }
        failure {
            echo '❌ Pipeline failed. Check Jenkins logs.'
        }
    }
}
