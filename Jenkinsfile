/*
 TEST Mainframe Pipeline
 */

pipeline{
         agent any
                 stages{
                       stage('setup credentials '){
                       environment {
                         SCRIPT = "./setup_credentials.sh"
                         CREDENTIALS = credentials('ZOWE-TEST') 
                         }
                        
                        steps {
                              timeout(time: 2, unit: 'MINUTES') {
                              echo 'Setup Profile Credentials'
                              sh "chmod +x $SCRIPT && $SCRIPT"
                              }
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
                 stage('Deployment'){
                       steps{
                            echo " deployment done."
                   
                  }
                  }
                 }
             } 