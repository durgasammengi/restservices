pipeline{
    agent any
    tools{
        maven 'maven'

    }
    stages{
        stage('build maven'){
            steps{
               checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/durgasammengi/restservices']]])
               sh 'mvn clean install'
            }
        }
        stage('build docker'){
            steps{
                script{
                    sh 'docker build -t prasad4u57/rest-services .'
                }
            }
        }
        stage('push docker image to hub'){
            steps{
                script{
                withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockerhubpwd')]) {
                    sh 'docker login -u prasad4u57 -p 222164@Sam'
                    sh 'docker push prasad4u57/rest-services'
                }
            }
            }


        }
    }
}