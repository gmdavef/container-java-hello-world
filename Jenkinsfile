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
                sh 'docker build --tag ${ARTIFACTORY_SERVER}:80/docker-local/davetest/java-hello-world:1.0 .'
                sh 'docker images'
            }
        } 
        stage('Artifactory') {
            steps {
                jf 'c show'
                jf 'docker push ${ARTIFACTORY_SERVER}:80/docker-local/davetest/java-hello-world:1.0 --server-id ${ARTIFACTORY_SERVER}-jwt'
            }   
        }
    }
}
