pipeline {
    agent any
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
                string(name: 'GIT_BRANCH', value: "${GIT_LOCAL_BRANCH}")
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