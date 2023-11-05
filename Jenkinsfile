node {
     stage('Clone repository') {
         checkout scm
     }
     stage('Build image') {
          app = docker.build("306857369182.dkr.ecr.ap-northeast-2.amazonaws.com/jh_prj")
     }
     stage('Push image') {
         docker.withRegistry('https://ec2-3-34-139-134.ap-northeast-2.compute.amazonaws.com/', 'harbor-reg') {
             app.push("${env.BUILD_NUMBER}")
             app.push("latest")
         }
     }
}