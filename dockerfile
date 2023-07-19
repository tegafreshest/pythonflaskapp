FROM python:3.7   

#pull python 3.7 docker image from docker hub

RUN mkdir /app
#make a new directory called app inside the container

WORKDIR /app/
#enter the created working directory


ADD . /app/
#copy all files in this flask_kubernetes directory into app directory created above

RUN pip install -r requirements.txt
#install the file dependencies for the project

CMD ["python", "/app/app.py"]


###
#in terminal we now want to create an image for the flask application using this dockerfile 
# docker build -t flask-kubernetes .  (this . means the dockerfile is in the current directory)
# docker images (to show all docker images)

#### Deploy the containerized application
# we need to create deployment.yaml (yaml is usuallyu used for docker composed) to deploy application to kubernetes engine
# first we crate a service that will work as a load balancer
# second create the deployment that will serve as an application
# replica as 5 means we create 5 instances for scalability purposes so if one crashes the other 4 will 

#### deploy service and the app instances to the kubernetes engine
# kubectl apply -f deployment.yaml