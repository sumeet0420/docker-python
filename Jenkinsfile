pipeline { 
	agent any
	environment {
	NAME='SUMEET'
	}
	stages {
		stage('Getting the Source Code from Github'){
			steps {
				git 'https://github.com/sumeet0420/docker-python.git'
		}
	}
		stage('Building and Running the docker image'){
			steps {
				if(isUnit()){
				sh 'docker run --rm  -e tags=$tags sumeet/docker-python'
				} else {}
				bat 'docker run --rm  -e tags=%tags% sumeet/docker-python'
				}
			}
		}
	}
	post {
		always {
		echo 'Build ran....'
		}
		success {
		echo 'Build ran successfully'
		}
		failure {
		echo 'Build falied.'
		}
		unstable {
		echo 'Build is unstable.'
		}
	}
}