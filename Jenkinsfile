pipeline {
    agent { 
      dockerfile {  
        args '-p 3000:3000'
      }
	}
    stages {
        stage('Build') {
            steps {
				input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}