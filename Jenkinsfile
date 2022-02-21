pipeline {
    stages {
        stage('Build') {
            agent { dockerfile true }
        }
        stage('Deploy') {
            agent any
            steps {
                sh 'git clone https://github.com/Emileneth/myAPI-terraform.git && cd myAPI-terraform'
                sh 'terraform init -no-input'
                sh 'terraform apply -no-input'
            }
        }
    }
}