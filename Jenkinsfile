/*
 TEST Mainframe Pipeline
 */

pipeline{
          agent { 
             node{
            label 'master' 
            customWorkspace '/home/swainkir/JenkinsJob/Zowe'
           
             }
             } 

                 stages{
                       stage('setup credentials '){
                           steps {
                              
                               echo " setup credentials for zowe ....."  


                                 sh  "./test.sh"
                              

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