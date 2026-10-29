pipeline {
    agent any
    stages {
        stage('1. Checkout Code') {
            steps {
                // Pulls code from your GitHub repository (replace with your repo URL)
                git branch: 'main', url: 'https://github.com/ShamKedar/lab_project.git'
            }
        }
        stage('2. Build Docker Image') {
            steps {
                // Builds the docker image using your Dockerfile
                sh 'docker build -t lab-app .'
            }
        }
        stage('3. Run Tests via Pytest in Docker') {
            steps {
                // Runs the container to execute pytest inside isolation
                sh 'docker run --rm lab-app pytest -v'
            }
        }
    }
}