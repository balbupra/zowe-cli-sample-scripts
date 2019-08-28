/*
 TEST Mainframe Pipeline
 */

pipeline{
         agent any
                 stages{
                       stage('Analysis'){
                       steps{
                            echo " Analysis started......"
                            sh ./setup_credentials.sh
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