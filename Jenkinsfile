pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    docker.image('openjdk:11').inside {
                        sh 'javac OlaUnicamp.java'
                    }
                }
            }
        }

        stage('Run') {
            steps {
                script {
                    docker.image('openjdk:11').inside {
                        sh 'java OlaUnicamp'
                    }
                }
            }
        }
    }
}
