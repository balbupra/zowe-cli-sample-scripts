/*
 TEST Mainframe Pipeline
 */

pipeline{
         agent any
                 stages{
                       stage('Analysis'){
                       steps{
                            echo " Analysis started......"
                            sh "run_demo.sh"
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