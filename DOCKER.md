# DOCKER

## Enlaces interesantes

- [Desplegar un Registro Privado](https://docs.docker.com/registry/deploying/)
- [Ejecutar travis-cli en Docker](https://500.keboola.com/run-any-binary-in-a-container-like-it-exists-on-your-computer-8f6205b8cd16)
- [Ejecutar TravisCI en Docker sin hacer uso de la web travis-ci.org](https://medium.com/google-developers/how-to-run-travisci-locally-on-docker-822fc6b2db2e)


## Pasos para crear un registro local, incorporar imágenes y crear contenedores a partir de ellas

### Descargamos contenedor de registro (registry:2)
```
docker run -d -p 5000:5000 -v /home/jose/registro/:/var/lib/registry --restart always --name registry registry:2
```

### Incorporamos la imagen hello-world a nuestro registro con el nombre hola

```
docker pull hello-world
docker tag hello-world ip:5000/hola
docker push ip:5000/hola

```

### Borramos caché

```
docker rmi hello-world
docker rmi ip:5000/hola  # don't worry, no se borrará la imagen que posee el registro registry

```

### Usamos la imagen hola de nuestro registro

```
docker run ip:5000/hola

```
