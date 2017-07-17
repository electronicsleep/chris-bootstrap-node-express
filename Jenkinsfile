pipeline {
    agent { docker 'node:6.11-wheezy' }
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
