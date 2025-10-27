pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/<your-username>/simplejavaweb.git'
            }
        }

        stage('Build') {
            steps {
                bat 'javac -d build src\\com\\example\\HelloWorld.java'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    docker.build("simplejavaweb:latest", ".")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    docker.image("simplejavaweb:latest").run()
                }
            }
        }
    }
}
