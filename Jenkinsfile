pipeline {
    agent { docker 'node:6.11' }
    stages {
        stage('build') {
            steps {
                sh 'npm --version'
                sh 'npm install'
                sh 'node app.js'
            }
        }
    }
}
