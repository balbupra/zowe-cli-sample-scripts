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
                         node(label: 'jenkins-slave.mfdevopscoe.mfdevops.tds.tieto.com-b505f898')
                         {
                         zowe profiles create zosmf prashuzowe --host 192.49.207.105 --port 443 -u TT6PBE1 -p Prashu99 --no-ru
                         zowe zosmf check status
                         }  
                           }
                   }
                    }
              }
              