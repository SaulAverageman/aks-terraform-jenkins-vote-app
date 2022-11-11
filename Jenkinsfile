pipeline {
  agent any

  stages {
    stage ('Deploy App') {
      steps {
        script {
                //kubectl apply -f deployment.yaml
                kubernetesDeploy(configs: "deployment.yaml", kubeconfigId: "mykubeconfig")
               }
             }
        }
  }

}
