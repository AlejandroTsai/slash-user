
def parentDic = "user-web"
pipeline {
    agent any

    stages {
        stage('pull code') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: "*/${branchName}"]], extensions: [], userRemoteConfigs: [[credentialsId: '9d48ca38-b61d-4ae5-a842-43a7b0972d1e', url: 'https://github.com/AlejandroTsai/slash-user.git']]])
                echo 'pull code completed!'
            }
        }
        stage('build project') {
            steps {
                sh "mvn -f ${parentDic}/${projectName} clean package dockerfile:build"
                echo 'build project completed!'
            }
        }
        stage('build and push image') {
            steps {
//                 sh "cp ${parentDic}/${projectName}/target/*.jar *.jar"
//                 sh "mvn dockerfile:build"
//                 sh "rm -f *.jar"
                echo 'build and push image completed!'
            }
        }
        stage('publish project') {
            steps {
                echo 'publish project completed!'
            }
        }
    }
}
