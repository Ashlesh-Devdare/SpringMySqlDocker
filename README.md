Pre-requisite 
1. MySQL DB container running with hostname mysqldb
2. DB container should be connected to User created docker network i.e. springmysql  
3. The DB name should be hospital
4. There should be below tables created with schema provided below 

	CREATE TABLE doctors (
	first_name varchar(25),
	last_name  varchar(25),
	department varchar(15),
	email  varchar(50)
	);
	
	CREATE TABLE patients (
	first_name varchar(25),
	last_name  varchar(25)
	);
	
Command to build the image 
docker build -t ashleshdocker/springapps:1.0 .

Command to run the cotainer 
docker run --network springmysql --name springmysqlappdocker -p 8080:8080 -e DB_HOSTNAME=mysqldb -e DB_PORT=3306 -e DB_NAME=hospital -e DB_USER=dbuser -e DB_PASSWORD=dbuser ashleshdocker/springapps:1.0

You can access the REST API exposed at 
http://hostname:8080/hospital/doctors

As we have not populated any data into DB we need to POST data to REST API exposed.
The sample POST request for patients is shown below 

[{"first_name":"TestUser","last_name":"TestUser"}]

