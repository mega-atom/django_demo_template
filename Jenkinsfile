pipeline {
    agent any
    environment {
        IMAGE_NAME = 'iorp/django_demo'
    }
    stages {
        stage("build") {
            steps {
                sh 'docker build . -t ${IMAGE_NAME}:${GIT_COMMIT} -t ${IMAGE_NAME}:latest'
            }
        }
    }
}