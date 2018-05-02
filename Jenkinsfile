pipeline {
    agent any

    stages {

        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'mvn') {
                    bat 'mvn clean compile'
					echo "Compile complete"
                }
            }
        }

		stage ('Testing Stage') {

            steps {
                withMaven(maven : 'mvn') {
                    bat 'mvn test'
					echo "Test complete"
                }
            }
        }
    }
}