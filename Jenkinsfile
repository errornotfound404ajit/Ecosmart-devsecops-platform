pipeline {

    agent any

    tools {
       maven 'maven'
    }

    environment {
        SONAR_TOKEN = credentials('sonar-token')
    }

    stages {

        stage('Build Backend') {
            steps {

                echo 'Building Backend Application...'

                dir('backend') {
                    sh 'mvn clean install -DskipTests'
                }
            }
        }

        stage('SonarQube Analysis') {
            steps {

                echo 'Running SonarQube Analysis...'

                dir('backend') {

                    withSonarQubeEnv('sonarqube') {

                        sh '''
                        mvn sonar:sonar \
                        -Dsonar.projectKey=smart-backend \
                        -Dsonar.host.url=http://sonarqube:9000 \
                        -Dsonar.login=$SONAR_TOKEN
                        '''
                    }
                }
            }
        }

        stage('Build Frontend') {
            steps {

                echo 'Building Frontend Application...'

                dir('frontend') {
                    sh 'npm install'
                    sh 'npm run build'
                }
            }
        }

        stage('Build Backend Docker Image') {
            steps {

                echo 'Building Backend Docker Image...'

                dir('backend') {
                    sh 'docker build -t smart-backend:v1 .'
                }
            }
        }

        stage('Trivy Backend Image Scan') {
            steps {

        echo 'Running Trivy Security Scan on Backend Image...'

        sh '''
        trivy image --severity HIGH,CRITICAL smart-backend:v1
        '''
            }
}
        stage('Build Frontend Docker Image') {
            steps {

                echo 'Building Frontend Docker Image...'

                dir('frontend') {
                    sh 'docker build -t smart-frontend:v1 .'
                }
            }
        }

    }

    post {

        success {
            echo 'Pipeline executed successfully!'
        }

        failure {
            echo 'Pipeline failed!'
        }

    }

}