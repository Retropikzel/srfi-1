pipeline {
    agent any
    stages {
        stage('Guile R7RS Portability') {
            steps {
                sh 'bash r7rs-portability-test.sh guile guile'
            }
        }
    }

}
