/*
 TEST Mainframe Pipeline
 */

pipeline{
         agent any
                 stages{
                       stage('Set Credentials'){
                            environment {
                              SCRIPT = "./setup_credentials.sh"
                              CREDENTIALS = credentials('9b984788-e0b6-4ccb-a1ad-16f24f7de5cc')
                         }
                       steps{
                            echo " Analysis started......"
                            sh ./setup_credentials.sh
                        }
                 }
}
}