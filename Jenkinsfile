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
                              node(label: 'jenkins-slave.mfdevopscoe.mfdevops.tds.tieto.com-b505f898')
                           }
                                 zowe files download ds "TT6PBE1.BUILD.COBOL(COMPJCL)"
                              

                              }
                    }
                                 
		        }
              