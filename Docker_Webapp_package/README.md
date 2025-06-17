README File

Make sure that docker has been installed in your machine .
If docker is not present , run the below command and install docker:

yum install docker -y
service docker start


Run the below command to build docker image:
'''
bash
docker build -t flask-webapp .

Run the below command to run docker container
docker run -itd --name flaskcontainer -p 8080:8080 flask-webapp

Now try to hit the below URL in browser for accessing the app:

http://localhost:8080


