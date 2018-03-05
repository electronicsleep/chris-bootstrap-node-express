pipeline {
    agent any
    stages {
        stage('version') {
            steps {
                sh 'node --version'
                sh 'npm --version'
            }
        }
        stage('build') {
            steps {
                sh 'npm install'
            }
        }
        stage('run') {
            steps {
                sh 'node app.js'
            }
        }
    }
}
