pipeline {
    agent any
    environment {
        IMAGE_NAME = "my-html-site"
        CONTAINER_NAME = "html-container"
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/salamatali726200-cpu/project.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t $IMAGE_NAME .
                '''
            }
        }
        stage('Run Container') {
            steps {
                sh '''
                # Stop old container if exists
                docker stop $CONTAINER_NAME || true
                docker rm $CONTAINER_NAME || true

                # Run new container on port 8081
                docker run -d --name $CONTAINER_NAME -p 8081:80 $IMAGE_NAME
                '''
            }
        }
    }
}

