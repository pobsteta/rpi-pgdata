Docker notes
============

Enregistrer un conteneur en une image
-------------------------------------

docker commit <ID_conteneur> rpi_pgdata_tag

Taguer ensuite l'image
----------------------

docker tag <ID_image> pobsteta/rpi_pgdata:tag

Utiliser le dépôt docker
------------------------

Se logguer au serveur docker et pousser l'image sur le serveur.

```sh
sudo docker login
sudo docker push pobsteta/rpi-pgdata:tag
```

Recevoir l'image du serveur docker :

```sh
sudo docker pull pobsteta/rpi-pgdata:tag
```

Utiliser Trusted Build
----------------------

Pour automatiser les builds successifs, renseigner sur le serveur docker Trusted Builds

Chaque commit réalisé sur le dépôt GitHub réalisera un build automatiquement sur le serveur Docker.
Cette nouvelle version sera tagguée pobsteta/rpi-pgdata:tag, en remplaçant tag par latest ou full ou bef

Pour plus d'informations sur Trusted Build : http://docs.docker.io/docker-io/builds/
