#Get the base image
FROM python:3.6-alpine
#Declare the maintainer
LABEL maintainer="Lucroz94 <lucroz@lucroz.fr>"
#Specify the working directory
WORKDIR /opt
#Launch the installation of FLASk (REST API)
RUN pip install flask==1.1.2
#Expose the port you want
EXPOSE 8080
#Environnement variable that will be overloaded further by ODOO and pgAdmin
ENV ODOO_URL https://odoo.com
ENV PGADMIN_URL https://pgadmin.org
#Copy the python script from the host directory inside the container
COPY app.py ./
#Lauch the python script to overload variables
CMD [ "python", "./app.py"]