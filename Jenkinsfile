pipeline {
    agent any
    stages {
        stage('version') {
            steps {
                echo 'Verify node and npm installed'
                sh 'node --version'
                sh 'npm --version'
            }
        }
        stage('test') {
            steps {
                echo 'Start node with docker and test'
                sh 'bash test.sh'
            }
        }
    }
}
