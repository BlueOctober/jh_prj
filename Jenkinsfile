node {
     stage('Clone repository') {
         echo "--- checkout scm start.. ---"
         checkout scm
         echo "--- checkout scm end.. ---"
     }
     stage('Build image') {
          echo "---Build Stage Try..---"
          app = docker.build("admin/flask-example")
          echo "---Build Stage End..---"
     }
     stage('Push image') {
         echo "---Push Stage---"
         docker.withRegistry('https://ec2-52-78-173-40.ap-northeast-2.compute.amazonaws.com/', 'harbor-reg') {
             app.push("${env.BUILD_NUMBER}")
             app.push("latest")
         }
         echo "---Push Stage End..---"
     }
}