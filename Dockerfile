FROM node:6.14.2 

EXPOSE 8080 

COPY server.js . 

CMD node server.js 

CMD docker login 
CMD export DOCKERID=docker_id 
CMD docker image build --tag $DOCKERID/linux_tweet_app:1.0 . 
CMD docker image ls -f reference="$DOCKERID/*" 
CMD docker image push $DOCKERID/linux_tweet_app:1.0 
