pipeline {
    agent any
    stages {
        stage('version') {
            steps {
                sh 'node --version'
                sh 'npm --version'
            }
        }
        stage('test') {
            steps {
                sh 'test.sh'
            }
        }
    }
}
