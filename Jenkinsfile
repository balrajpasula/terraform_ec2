pipeline {
    agent any

   
    parameters {
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Select the Terraform action to perform.')
    }

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

                        
                        if ("${params.action}" == "apply") {
                            echo 'Planning and applying Terraform configuration...'
                            sh 'terraform apply -auto-approve'
                        } else if ("${params.action}" == "destroy") {
                            echo 'Destroying Terraform resources...'
                            sh 'terraform destroy -auto-approve'
                        }
                    }
                }
            }
        }
    }
}
