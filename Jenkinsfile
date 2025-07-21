pipeline {
    agent any

    parameters {
        choice(name: 'RESOURCE_TYPE', choices: ['s3', 'ec2'], description: 'Choose resource to deploy')
        string(name: 'NAME', defaultValue: '', description: 'Bucket or Instance Name')
        choice(name: 'AWS_REGION', choices: ['us-east-1', 'us-west-2'], description: 'AWS Region')
    }

    environment {
        TF_VAR_bucket_name = "${params.RESOURCE_TYPE == 's3' ? params.NAME : ''}"
        TF_VAR_instance_name = "${params.RESOURCE_TYPE == 'ec2' ? params.NAME : ''}"
        AWS_DEFAULT_REGION = "${params.AWS_REGION}"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/riteshbehal/TerraForm.git'
            }
        }

        stage('Terraform Init') {
            steps {
                dir("${params.RESOURCE_TYPE}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir("${params.RESOURCE_TYPE}") {
                    sh 'terraform apply -auto-approve'
                }
            }
        }

        stage('Terraform Output') {
            steps {
                dir("${params.RESOURCE_TYPE}") {
                    sh 'terraform output'
                }
            }
        }
    }
}
