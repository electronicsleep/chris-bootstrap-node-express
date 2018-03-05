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
                sh 'pwd'
                sh 'ls -ltra'
                sh 'bash test.sh'
            }
        }
    }
}
