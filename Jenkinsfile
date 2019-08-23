/*
 * This program and the accompanying materials are made available under the terms of the *
 * Eclipse Public License v2.0 which accompanies this distribution, and is available at  *
 * https://www.eclipse.org/legal/epl-v20.html                                            *
 *                                                                                       *
 * SPDX-License-Identifier: EPL-2.0                                                      *
 *                                                                                       *
 * Copyright Contributors to the Zowe Project.                                           *
 */

pipeline {
    agent any
     
     stages {
        /************************************************************************
         * STAGE
         * -----
         * Setup Profile Credentials
         *
         * TIMEOUT
         * -------
         * 2 Minutes
         *
         * DESCRIPTION
         * -----------
         * Setup the profile credentials using dbus-launch and keytar prashant
         *
         * OUTPUTS
         * -------
         * None
                  ************************************************************************/
        stage('Setup Profile Credentials') {
            environment {
              SCRIPT = "./setup_credentials.sh"
              CREDENTIALS = credentials('9b984788-e0b6-4ccb-a1ad-16f24f7de5cc')
            }
            steps {
                timeout(time: 2, unit: 'MINUTES') {
                    echo 'Setup Profile Credentials'
                    sh "chmod +x $SCRIPT && $SCRIPT"
                }
            }
        }
 
    stages {


        /************************************************************************
         * STAGE
         * -----
         * Build - Deploy - Test
         *
         * TIMEOUT
         * -------
         * 2 Minutes
         *
         * DESCRIPTION
         * -----------
         * This is where the demo will be run from.
         *
         * OUTPUTS mahee
         * -------
         * None
         ************************************************************************/
        stage('Build - Deploy - Test') {
            environment {
                RUN_SCRIPT = "./run_demo.sh"
                DEMO_SCRIPT = "./demo_content.sh"
            }
            steps {
                timeout(time: 4, unit: 'MINUTES') {
                    echo 'Build - Deploy - Test'
                    sh "chmod +x $RUN_SCRIPT && chmod +x $DEMO_SCRIPT && $RUN_SCRIPT"
                }
            }
        }
    }
    // post {
    //     /************************************************************************
    //      * POST BUILD ACTION
    //      *
    //      * Sends out an email indicating the status of the build. Demo purposes
    //      * only.
    //      ************************************************************************/
    //     always {
    //         script {
    //             def recipients = ""
    //             def subject = "${currentBuild.currentResult}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
    //             def consoleOutput = """
    //             <p>Branch: <b>${BRANCH_NAME}</b></p>
    //             <p>Check console output at "<a href="${RUN_DISPLAY_URL}">${env.JOB_NAME} [${env.BUILD_NUMBER}]</a>"</p>
    //             """

    //             emailext(
    //                     subject: subject,
    //                     to: recipients,
    //                     body: "Build Finished ${consoleOutput}",
    //                     recipientProviders: [[$class: 'DevelopersRecipientProvider'],
    //                                           [$class: 'UpstreamComitterRecipientProvider'],
    //                                           [$class: 'CulpritsRecipientProvider'],
    //                                           [$class: 'RequesterRecipientProvider']]
    //             )
    //         }
    //     }
    // }
}