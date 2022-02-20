pipeline {
    stages: {
        stage('Build') {
            agent { dockerfile true }
        }
        stage('Deploy') {
            agent any
            steps {
                sh 'terraform init -no-input'
                sh 'terraform apply -no-input'
            }
        }
    }
}