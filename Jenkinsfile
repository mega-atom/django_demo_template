pipeline {
    agent any
    environment {
        IMAGE_NAME = 'iorp/django_demo'
    }
    stages {
        stage('build') {
            steps {
                build job: '../lib/django build parametrized',
                parameters: [
                string(name: 'GIT_URL', value: "${GIT_URL}"),
                string(name: 'GIT_BRANCH', value: "${GIT_BRANCH}"),
                string(name: 'GIT_COMMIT_HASH', value: "${GIT_COMMIT}"),
                string(name: 'IMAGE_NAME', value: "${IMAGE_NAME}")
                ]
            }
        }
        stage('test') {
            steps {
                build job: '../lib/django-test-parametrized',
                parameters: [
                string(name: 'GIT_URL', value: "${GIT_URL}"),
                string(name: 'GIT_BRANCH', value: "${GIT_BRANCH}")
                ]
            }
        }
    }
}