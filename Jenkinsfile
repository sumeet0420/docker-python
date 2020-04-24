pipeline { 
	agent any
	environment {
	NAME='SUMEET'
	}
	stages {
		stage('Building and Running the image'){
		steps {
				bat 'cd /d "f:/dev/docker-python"'
                bat 'docker run --rm  -e tags=%tags% sumeet/docker-python'
			}
		}
	}
	post {
		always {
		echo 'Build ran'
		}
		success {
		echo 'and it was a success'
		}
		failure {
		echo 'and it was a failure'
		}
		unstable {
		echo 'and it was unstable'
		}
	}
}