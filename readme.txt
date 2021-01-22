JENKINS && DOCKER

---PRÁCTICA 1 Y 2---

Comando para buildear la imagen a partir del DOCKERFILE:

	docker build -t my-jenkins2 -f Dockerfile.dockerfile .

Tras crear la imagen, ejecutamos el contenedor con el volumen de información en local:

	docker run --name MyJenkins2 -p 8080:8080 -p 50000:50000 -v 
	C:/Users/afuentem/Documents/Jenkins/Jenkins_Home:/var/jenkins_home my-jenkins2


Finalmente, en el navegador web accedemos a Jenkins mediante localhost:8080.

Por otro lado, también podemos crear un volumen persistente en docker:

	docker volume create myjenkins

Y luego lanzamos el contenedor de la misma forma que antes, pero usando el contenedor creado:

	docker run --name MyJenkins2 -p 8080:8080 -p 50000:50000 -v 
	C:/Users/afuentem/Documents/Jenkins/Jenkins_Home:/var/jenkins_home my-jenkins2

Video de interés: 
	https://www.youtube.com/watch?v=iN3he0eVUyw


--PRÁCTICA 3 Y 4---

Si nos piden la contraseña de administrador, hacemos lo siguiente:

	docker exec -ti container_name /bin/sh

Y una vez dentro del contenedor, buscamos la contraseña:

	cat /var/jenkins_home/secrets/initialAdminPassword

Déspues de crear el correspondiente archivo docker-compose.yml, lo ejecutamos mediante el comando 

	docker-compose up –d

NOTA: Se necesita una base de datos para almacenar la configuración de SonarQube, así como otra información necesaria para el correcto funcionamiento de la solución. 
Las bases de datos soportadas son PostgreSQL, Microsoft SQL Server, Oracle y MySQL. 
En nuestro caso vamos a utilizar una base de datos PostgreSQL.

Página de interés:
	https://aprenderdevops.com/instalacion-de-sonarqube-con-docker/
	https://github.com/jenkinsci/configuration-as-code-plugin/blob/master/README.md




