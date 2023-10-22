pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY     = credentials('AWS_ACCESS_KEY')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }

        stage('Deploy EC2 Instance') {
            steps {
                sh 'terraform apply -auto-approve'  // Deploy the EC2 instance
            }
        }

        stage('Clean Up') {
            steps {
                sh 'terraform destroy -auto-approve'  // Be cautious when running destroy
            }
        }
    }
}
