/*
 TEST Mainframe Pipeline
 */

pipeline{
         agent any
                 stages{
                       stage('Analysis'){
                       steps{
                            echo " Analysis started......"
                            bat "setup_credentials.bat"
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