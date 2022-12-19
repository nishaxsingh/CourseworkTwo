FROM node:6.14.2 

EXPOSE 8080 

COPY server.js . 

CMD node server.js 
<<<<<<< HEAD
=======

CMD export DOCKERID=nishaxsingh
CMD docker docker image build --tag $DOCKERID/coursework2:1.0 .
CMD docker image push $DOCKERID/coursework2:1.0

>>>>>>> 2120b01e936ac04227f984005ad33d80017f0ad7
