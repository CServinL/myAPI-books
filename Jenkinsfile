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
        sh 'docker stop myapi-books || true && docker rm myapi-books || true'
        sh 'docker run -p 5001:5000 -d --rm --name myapi-books -e MYSQL_IP="$env.mysql_ip" myapi-books:latest'
    }
}