pipeline {
    agent any
    
    stages {
        stage('Build Example App') {
            steps {
                script {
                    dir('example-app') {
                        docker.build("example-app:${env.BUILD_ID}")
                    }
                }
            }
        }
        
        stage('Test Example App') {
            steps {
                script {
                    docker.image("example-app:${env.BUILD_ID}").run()
                }
            }
        }
    }
    
    post {
        always {
            cleanWs()
        }
    }
}