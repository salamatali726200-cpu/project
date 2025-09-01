pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/salamatali726200-cpu/project.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the project...'
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                mkdir -p /tmp/deploy
                cp index.html /tmp/deploy/
                echo "Deployment done in /tmp/deploy"
                '''
            }
        }
    }
}

