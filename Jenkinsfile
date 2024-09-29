pipeline {
  agent none
    stages{
      stage('init'){
        step{
         sh 'terraform init -upgrade -no-color'
          }
       }
       stage('validate'){
        steps{
         sh 'terraform validate -no-color'
          }
        }
        stage('plan'){
        steps{
         sh 'terraform plan -no-color'
          }
        }
         stage('apply'){
        steps{
         sh 'terraform apply --auto-approve -no-color'
          }
       }
    }
}