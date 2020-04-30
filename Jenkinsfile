pipeline {
    agent any
    stages {
        stage('Linting') {
            steps {
                sh 'tidy -q -e *.html'
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

            }
        }
        stage('Deploy container') {
            steps {

            }
        }
    }
}