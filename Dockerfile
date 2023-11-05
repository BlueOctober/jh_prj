node {
     stage('Clone repository') {
         checkout scm
     }
     stage('Build image') {
         app = docker.build("admin/jh_prj")
         
     }
     stage('Push image') {
       
         docker.withRegistry('306857369182.dkr.ecr.ap-northeast-2.amazonaws.com', 'jinho') {
             app.push("${env.BUILD_NUMBER}")
             app.push("latest")
         }
     }
}