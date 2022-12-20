pipeline{
agent any


stages {
        stage('Build') {
            steps {
		sh 'docker build -t coursework2:1.0 .'
		echo 'building image'
    }
}
	stage('container') {
            steps {
		sh 'docker run -d --name container22 coursework2:1.0'
		sh 'docker exec container22 echo "container is running'
		echo 'building container'
    }
}
	stage('push image') {
            steps {
		sh 'docker push $nishaxsingh/coursework2:1.0'
		echo 'pushing image'
    }
}
      }
}
