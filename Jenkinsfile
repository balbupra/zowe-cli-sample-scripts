/*
 TEST Mainframe Pipeline
 */

pipeline{
         agent any
                 stages{
                       stage('setup credentials '){
                           steps {
                              
                               sh './setup_credentials'
                           
                         
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