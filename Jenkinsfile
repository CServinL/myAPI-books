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
        sh 'terraform init'
        sh 'terraform plan -out=plan.bin -var "mysql_ip=%mysql_ip%"'
        sh 'terraform apply -var "mysql_ip=%mysql_ip%" plan.bin'
    }
}