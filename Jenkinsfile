pipeline {
	agent any
	parameters {
		string(name: 'VERSION', defaultValue: '1', description: 'Production deploy')
	}
	stages {
		stage("build") {
			steps {
				echo "building the application"
			}
		}
	}
}

