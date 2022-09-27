pipeline {
    agent any

    stages {
        stage('pull code') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: '9d48ca38-b61d-4ae5-a842-43a7b0972d1e', url: 'https://github.com/AlejandroTsai/slash-user.git']]])
                echo 'pull code completed!'
            }
        }
        stage('build project') {
            steps {
                sh 'mvn clean package'
                echo 'build project completed!'
            }
        }
        stage('publish project') {
            steps {
                echo 'publish project completed!'
            }
        }
    }
}
