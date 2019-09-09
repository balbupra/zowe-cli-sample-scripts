/*
 TEST Mainframe Pipeline
 */

pipeline{
         agent any
                 stages{
                       stage('setup credentials '){
                       environment {
               PATH = "C:\\Program Files\\Git\\usr\\bin;C:\\Program Files\\Git\\bin;${C:\Program Files\Git\usr\bin}"          
                                               
                        steps {
                              
                                SCRIPT = "./setup_credentials.sh"
                                CREDENTIALS = credentials('ZOWE-TEST') 
  
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