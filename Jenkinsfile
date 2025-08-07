pipeline {
    agent any

   
    stages {
        stage('Deploy Infrastructure') {
            steps {
                script {
                    withCredentials([
                        string(credentialsId: 'access_key', variable: 'AWS_ACCESS_KEY_ID'),
                        string(credentialsId: 'secret_key', variable: 'AWS_SECRET_ACCESS_KEY')
                    ]) {
                        echo 'Initializing Terraform...'
                        sh 'terraform init'

                        echo 'Planning and applying Terraform configuration...'
                        sh 'terraform apply -auto-approve'
                    }
                }
            }
        }
    }
}
