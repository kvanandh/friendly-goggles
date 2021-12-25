pipeline {
	agent any
	agent {
		kubernetes {
			label 'sample-app'
			defaultContainer 'jnlp'
			yaml """
apiVersion: v1
kind: Pod
metadata:
labels:
  component: ci
spec:
  # Use service account that can deploy to all namespaces
  serviceAccountName: cd-jenkins
  containers:
  - name: golang
    image: golang:1.10
    command:
    - cat
    tty: true
  - name: gcloud
    image: gcr.io/cloud-builders/gcloud
    command:
    - cat
    tty: true
  - name: kubectl
    image: gcr.io/cloud-builders/kubectl
    command:
    - cat
    tty: true
"""
}
}
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

