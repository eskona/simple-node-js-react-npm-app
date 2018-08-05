pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                sh 'node --version'
				input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}