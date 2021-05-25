FROM amazoncorretto:11-alpine-jdk
MAINTAINER skander jlaiel
COPY target/docker-message-server-0.0.1-SNAPSHOT.jar message-server-1.0.0.jar
ENTRYPOINT ["java","-jar","/message-server-1.0.0.jar"]


  #FROM : la base de notre image, nous prendrons le Linux Alpine compatible Java ,
  #créé dans la section précédente.
  #MAINTAINER : Le mainteneur de l'image.Nous laissons Docker copier notre fichier jar dans l'image.
  #ENTRYPOINT : Ce sera l'exécutable à démarrer lorsque le
  #conteneur démarre. Nous devons les définir comme JSON-Array , car nous utiliserons
  #un ENTRYPOINT en combinaison avec un CMD pour certains
  # arguments d'application.*/