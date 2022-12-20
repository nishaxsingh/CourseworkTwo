pipeline{
agent any


stages {
        stage('Build') {
            steps {
		sh 'docker build -t coursework2:1.0 .'
    }
}
	stage('container') {
            steps {
		sh 'docker run -d --name containertest coursework2:1.0'
		sh 'docker exec containertest echo "container is running'
    }
}
	stage('push image') {
            steps {
		sh 'docker push $nishaxsingh/coursework2:1.0'
    }
}
}
}
