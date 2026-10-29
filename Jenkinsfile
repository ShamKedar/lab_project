pipeline {
    agent any
    stages {
        stage('1. Checkout Code') {
            steps {
                // This explicitly clones your repo inside the pipeline safely
                git branch: 'main', url: 'https://github.com/ShamKedar/lab_project.git'
            }
        }
        stage('2. Build Docker Image') {
            steps {
                sh 'docker build -t lab-app .'
            }
        }
        stage('3. Run Tests via Pytest in Docker') {
            steps {
                sh 'docker run --rm lab-app pytest -v'
            }
        }
    }
}