pipeline {
    agent any
    environment {
        IMAGE_NAME = 'iorp/django_demo'
    }
        stages {
            stage('build') {
                steps {
                    script {
                    def output = sh(returnStdout: true, script: 'echo $(echo $GIT_BRANCH   | sed -e "s|origin/||g")')
                     GIT_LOCAL_BRANCH="${output}"
                }
                build job: '../lib/python build parametrized',
                parameters: [
                string(name: 'GIT_URL', value: "${GIT_URL}"),
                string(name: 'GIT_BRANCH', value: "${GIT_LOCAL_BRANCH}"),
                string(name: 'GIT_COMMIT', value: "${GIT_COMMIT}"),
                string(name: 'IMAGE_NAME', value: "${IMAGE_NAME}"),
                ]
            }
            stage('test') {
                steps {
                    script {
                    def output = sh(returnStdout: true, script: 'echo $(echo $GIT_BRANCH   | sed -e "s|origin/||g")')
                     GIT_LOCAL_BRANCH="${output}"
                }
                build job: '../lib/python-test-parametrized',
                parameters: [
                string(name: 'GIT_URL', value: "${GIT_URL}"),
                string(name: 'GIT_BRANCH', value: "${GIT_LOCAL_BRANCH}")
                ]
            }
        }
    }
}