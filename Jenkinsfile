pipeline {
    environment {
        repo = "michalkrasucki/capstone"
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
                    def customImage = docker.build(repo + ":${env.BUILD_ID}")
                    docker.withRegistry( 'https://index.docker.io/v1/', registryCredential ) {
                        customImage.push('latest')
                    }
                }
            }
        }
        stage('Push image') {
            steps {
                sh 'Push image'
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