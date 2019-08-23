/*
 TEST Mainframe Pipeline
 */

pipeline{
         agent any
                 stages{
                       stage('Set Credentials'){
                            environment {
                              SCRIPT = "./setup_credentials.bat"
                              CREDENTIALS = credentials('9b984788-e0b6-4ccb-a1ad-16f24f7de5cc')
                         }
                       steps{
                            echo " Analysis started......"
                        }
                        }
		      stage('Devlopment'){
                       steps{
                            echo " devlopment started......"
                       }
	               }
                 stage('Testing'){
                       steps{
                            echo " Testing started......"
                       }
                       }
//                 stage('Deployment'){
//                       stage('Build - Deploy - Test') {
//                         environment {
//                              RUN_SCRIPT = "./run_demo.sh"
//                              DEMO_SCRIPT = "./demo_content.sh"
//                                   }                                  
//                    steps {
//                        timeout(time: 4, unit: 'MINUTES') {
//                              echo 'Build - Deploy - Test'
//                         sh "chmod +x $RUN_SCRIPT && chmod +x $DEMO_SCRIPT && $RUN_SCRIPT"
//}
//}
//}
//} 
//             
//                  }
//                  }
                 }          