pipeline {
  agent any

  stages {
     stage('Checkout Source') {
      steps {
        git 'https://github.com/SaulAverageman/aks-terraform-jenkins-vote-app.git'
      }
    }
    
    stage ('Deploy App') {
      steps {
        script {
                kubernetesDeploy(configs: "deployment.yaml", kubeconfigId: "mykubeconfig")
               }
             }
        }
  }

}
