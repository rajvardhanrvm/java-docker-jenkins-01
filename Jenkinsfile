pipeline {
    agent any  // This means the pipeline can run on any available agent

    environment {
        DOCKER_IMAGE = 'java-welcome-message'  // Name of the Docker image
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
              }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image from the Dockerfile
                    sh 'docker build -t $DOCKER_IMAGE .'  // Build image with the name 'java-welcome-message'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run the Docker container and execute the WelcomeMessage Java program
                    sh 'docker run $DOCKER_IMAGE'
                }
            }
        }
    }

    post {
        success {
            echo 'Java program ran successfully inside Docker!'
        }
        failure {
            echo 'Something went wrong with the Docker execution.'
        }
    }
}