node{
    def app

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */


	docker build -t coursework2:latest .
    }


    stage('container') {

	docker run -d --name container1 coursework2:latest
	docker exec container1 echo "container is running"
    }

    stage('push image') {


	docker push $nishaxsingh/coursework2:1.0
    }
}


