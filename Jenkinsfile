pipeline {
    agent {
        docker {
            image 'openjdk:11'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'javac OlaUnicamp.java'
            }
        }
        stage('Run') {
            steps {
                sh 'java OlaUnicamp'
            }
        }
    }
}
