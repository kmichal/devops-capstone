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
        stage('Build image and push') {
            steps {
                script {
                    def customImage = docker.build(repo + ":${env.BUILD_ID}")
                    docker.withRegistry( 'https://index.docker.io/v1/', registryCredential ) {
                        customImage.push('latest')
                    }
                }
            }
        }
        stage('set current kubectl context') {
            steps {
                withAWS(credentials: 'jenkins', region: 'us-west-2') {
                    sh "aws eks --region us-west-2 update-kubeconfig --name capstone"
                }
            }
        }
        stage('Deploy container') {
            steps {
                dir('kube_resources') {
                    withAWS(credentials: 'jenkins', region: 'us-west-2') {
                        sh 'kubectl apply -f k8_deployment.yaml'
                    }
                }
            }
        }
        stage('Clean up docker'){
            steps {
                sh 'docker image rm ' + repo + ":${env.BUILD_ID}"
            }
        }
    }
}