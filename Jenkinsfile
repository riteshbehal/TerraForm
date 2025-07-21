pipeline {
  agent any
  parameters {
    choice(name: 'RESOURCE_TYPE', choices: ['ec2', 's3'], description: 'Select the resource to create')
    string(name: 'RESOURCE_NAME', defaultValue: '', description: 'Name of the EC2 instance or S3 bucket')
    choice(name: 'REGION', choices: ['us-east-1', 'us-west-1', 'ap-south-1'], description: 'AWS Region')
  }
  environment {
    TF_VAR_name = "${params.RESOURCE_NAME}"
    AWS_REGION = "${params.REGION}"
  }
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/riteshbehal/CloudFormation.git'
      }
    }
    stage('Init Terraform') {
      steps {
        dir("${params.RESOURCE_TYPE}") {
          sh 'terraform init -backend-config=../backend.tfvars'
        }
      }
    }
    stage('Plan') {
      steps {
        dir("${params.RESOURCE_TYPE}") {
          sh 'terraform plan -var="name=${TF_VAR_name}" -var="region=${AWS_REGION}"'
        }
      }
    }
    stage('Apply') {
      steps {
        dir("${params.RESOURCE_TYPE}") {
          sh 'terraform apply -auto-approve -var="name=${TF_VAR_name}" -var="region=${AWS_REGION}"'
        }
      }
    }
  }
}
