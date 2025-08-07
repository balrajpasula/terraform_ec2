pipeline {
    agent any

  
    environment {
        AWS_ACCESS_KEY_ID = credentials('access_key')
        AWS_SECRET_ACCESS_KEY = credentials('secret_key')
    }

    stages {
        stage('Initialize Terraform') {
            steps {
                echo 'Initializing Terraform...'
                
                sh 'terraform init'
            }
        }

        stage('Plan and Apply') {
            steps {
                echo 'Planning and applying Terraform configuration...'
                
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
