node {
    checkout scm 
    stage('Build') {
        sh 'docker build . -t latest'
    }
    stage('Test') {
        
    }
    stage('Deploy') {
        sh 'terraform init'
        sh 'terraform apply --auto-approve'
    }
}