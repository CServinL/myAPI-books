node {
    checkout scm 
    stage('Build') {
        docker build . -t latest
    }
    stage('Test') {
        
    }
    stage('Deploy') {
        terraform init
        terraform apply --auto-approve
    }
}