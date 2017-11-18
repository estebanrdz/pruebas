# DOCKER

## Enlaces interesantes

- [Desplegar un Registro Privado](https://docs.docker.com/registry/deploying/)
- [Ejecutar travis-cli en Docker](https://500.keboola.com/run-any-binary-in-a-container-like-it-exists-on-your-computer-8f6205b8cd16)
- [Ejecutar TravisCI en Docker sin hacer uso de la web travis-ci.org](https://medium.com/google-developers/how-to-run-travisci-locally-on-docker-822fc6b2db2e)

## Instalar docker en Ubuntu
```
sudo  apt  install  docker.io
```

## Añadir usuario al grupo docker
```
sudo  adduser  `id -un`  docker
```


## En el servidor
__Pasos para crear un registro local e incorporar imágenes__


### Creamos directorio para el registro
```
mkdir  ~/registro
```

### Descargamos contenedor de registro (registry:2)

```
docker run -d -p 172.20.7.0:5000:5000 \
              -v /home/`id -un`/registro/:/var/lib/registry \
              --restart always \ 
              --name registry \
              registry:2
```

### Incorporamos la imagen hello-world a nuestro registro con el nombre hola

```
docker pull hello-world
docker tag hello-world ip:5000/hola
docker push ip:5000/hola
```

### (Opcional) Borramos caché

```
docker rmi hello-world
docker rmi ip:5000/hola  # don't worry, no se borrará la imagen que posee el registro registry
```

### (Opcional) Si necesitamos parar el registro
```
docker stop registry
docker rm -v registry
``` 


## En el cliente
__Pasos para descargar imágenes__


### Permitimos registros inseguros
```
nano /etc/docker/daemon.json
```

Añadir la siguiente línea:
```
{ "insecure-registries":["172.20.7.0:5000"] }
```

### Reiniciamos daemon

```
sudo  systemctl  restart  docker
```

### Usamos la imagen hola del registro privado

```
docker run ip:5000/hola
```
