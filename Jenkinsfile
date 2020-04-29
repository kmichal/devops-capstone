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
                def customImage = docker.build("my-image:${env.BUILD_ID}")
            }
        }
        stage('Push image') {
            steps {

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