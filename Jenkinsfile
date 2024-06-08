pipeline{
    agent any
    environment {
  PATH = "${PATH}:${getTerraformpath()}"
}

    stages {
        stage('Prepare') {
            steps {
                script {
                    sh "echo '1' | sudo alternatives --config java"
                }
            }
        }
    stages{
        stage('Terraform init and apply -dev'){
            steps {
                sh "terraform workspace new dev"
                sh "terraform init"
                sh "terraform apply -var-file=dev.tfvars --auto-approve"
            }
        }
    }
}

def getTerraformpath(){
    def tfHome = tool name: 'terraform 1.4', type: 'terraform'
    return tfHome
}