pipeline {
    agent any
    stages {
        stage('Linting') {
            steps {

                sh 'tidy -q -e src/*.html'
            }
        }
        stage('Build image') {
            steps {
                script {
                    def customImage = docker.build("app-image:${env.BUILD_ID}")
                }
            }
        }
        stage('Push image') {
            steps {
                script {
                    customImage.push('latest')
                }
            }
        }
        stage('set current kubectl context') {
            steps {
                sh 'echo "set current kubectl context"'
            }
        }
        stage('Deploy container') {
            steps {
                sh 'echo "deploy"'
            }
        }
    }
}