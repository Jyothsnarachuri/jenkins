pipeline {
    agent any

    stages {
        stage('clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Jyothsnarachuri/terraform1.git'
            }
        }
        stage('init') {
            steps {
                dir('day-3'){
                sh 'terraform init'
                }
            }
        }
        stage('plan') {
            steps {
                dir('day-3'){
                sh 'terraform plan'
                }
            }
        }
        stage('apply') {
            steps {
                dir('day-3'){
                sh 'terraform destroy -auto-approve'
                }
            }
        }
    }
}
