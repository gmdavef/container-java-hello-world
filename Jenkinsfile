pipeline {
    agent any
    tools {
        jfrog 'jfrog-cli'
    }
    stages {
        stage('Build') {
            steps {
                // git url: 'https://github.com/gmdavef/container-java-hello-world', branch: 'main'
                sh 'javac HelloWorld.java'
                sh 'docker build --tag ${ARTIFACTORY_SERVER}:80/docker-local/cicd-images/java-hello-world:${BUILD_NUMBER} .'
                sh 'docker images'
            }
        } 
        stage('Artifactory') {
            steps {
                jf 'c show'
                jf 'docker push ${ARTIFACTORY_SERVER}:80/docker-local/cicd-images/java-hello-world:${BUILD_NUMBER} --server-id ${ARTIFACTORY_SERVER}-jwt'
            }   
        }
    }
}
