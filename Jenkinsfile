pipeline {
    agent any
    stages {
        stage('test') {
            steps {
                echo 'Start Docker with NodeJs and test website output'
                sh 'bash test.sh'
            }
        }
    }
}
