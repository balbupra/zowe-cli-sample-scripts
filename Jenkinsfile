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
                       stage('setup test  credentials '){
                           steps {
                         node(label: 'jenkins-slave.mfdevopscoe.mfdevops.tds.tieto.com-b505f898')
                         {
                              zowe zosmf check status
                         }  
                           }
                   }
                    }
              }
              