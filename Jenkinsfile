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
     }