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
		sh 'docker run -d --name container-cw2-test coursework2:1.0'
		sh 'docker exec container-cw2-test echo "container is running"'
		echo 'building container'
    }
}
	stage('push image') {
            steps {
		sh 'docker push nishaxsingh/coursework2:1.0'
		echo 'pushing image'
    }
}
	stage('deploy') {
	    steps {
              kubernetes.withCluster('my-cluster') {
                def deployment = kubernetes.loadDeployment("my-deployment")
                kubernetes.rollingUpdate(deployment)

     }
    }
  }
	}
	}

