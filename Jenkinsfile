pipeline {
  agent any

  stages {
    
    stage ('Deploy App') {
      steps {
        script {
                kubernetesDeploy(configs: "deployment.yaml", kubeconfigId: "mykubeconfig")
               }
             }
        }
  }

}
