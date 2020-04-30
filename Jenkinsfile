pipeline {
    environment {
        registry = "michalkrasucki/capstone"
        registryCredential = 'dockerhub'
        customImage = ''
    }
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
                    def customImage = docker.build("capstone-image:${env.BUILD_ID}")
                    customImage.push('latest')
                }
            }
        }
        stage('Push image') {
            steps {
                script {
                    
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