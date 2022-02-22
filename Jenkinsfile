node {
    def app
    stage('Clone') {
        checkout scm 
    }
    stage('Build') {
        app = docker.build("myapi-books:latest")
    }
    stage('Test') {
        app.inside {
            sh 'pip list'
        }
    }
    stage('Deploy') {
        withEnv(['MYSQL_IP=']) {
            sh 'terraform init'
            sh 'terraform plan -out=plan'
            sh 'terraform apply plan -var mysql_ip="$MYSQL_IP"'
        }
    }
}