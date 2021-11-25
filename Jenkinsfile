pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building.. '
                sh './jenkins/build/calculator-build.sh'
                echo 'Builded.. '
            }
        }
        stage('Registry') {
            steps {
                echo 'Testing..'
                sh './jenkins/registry/calculator-registry.sh'
                echo 'Tested.. '
            }
        }
        
    }
}