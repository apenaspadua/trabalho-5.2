pipeline {
    agent {
        docker {
            image 'openjdk:11'
            args '-v $HOME/.m2:/root/.m2' 
        }
    }
    
    stages {
        stage('Clonar repositório') {
            steps {
                checkout scm
            }
        }
        
        stage('Compilar') {
            steps {
                sh 'mvn clean compile'
            }
        }
        
        stage('Testar') {
            steps {
                sh 'mvn test'
            }
        }
        
        stage('Empacotar') {
            steps {
                sh 'mvn package'
            }
        }
        
        stage('Executar') {
            steps {
                sh 'java -jar OlaUnicamp.jar'
            }
        }
    }
}
