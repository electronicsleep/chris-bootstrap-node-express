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
                dir('chris-bootstrap-node-express) {
                sh 'npm install'
                }
            }
        }
        stage('run') {
            steps {
                dir('chris-bootstrap-node-express) {
                sh 'node app.js'
                }
            }
        }
    }
}
