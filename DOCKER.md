# DOCKER

## Enlaces interesantes

- [Desplegar un Registro Privado](https://docs.docker.com/registry/deploying/)
- [Ejecutar travis-cli en Docker](https://500.keboola.com/run-any-binary-in-a-container-like-it-exists-on-your-computer-8f6205b8cd16)
- [Construir un entorno de integración continua con TravisCI](https://medium.com/google-developers/how-to-run-travisci-locally-on-docker-822fc6b2db2e)
- [Construir un entorno de integración continua con Jenkins y SonarQube](https://yeiei.net/es/como-construir-un-entorno-de-integracion-continua-con-jenkins-y-docker/)

```
Comentario
```
# COMO CREAR UN REGISTRO PRIVADO

Un registro es un servidor donde se almacenan imágenes de docker. Un registro privado puede montarse en una red local para ahorrar ancho de banda en las descargas desde Internet.

## Instalar docker en Ubuntu
```
sudo  apt  install  docker.io
```

## Añadir usuario al grupo docker
```
sudo  adduser  `id -un`  docker
```

Cerramos sesión del usuario y volvemos a iniciarla.


## En el servidor
__Pasos para crear un registro local e incorporar imágenes__


### Creamos directorio para el registro
```
mkdir  ~/registro
```

### Descargamos contenedor de registro (registry:2)

```
docker run -d -p 5000:5000 \
              -v /home/`id -un`/registro/:/var/lib/registry \
              --restart always \ 
              --name registry \
              registry:2
```

### Incorporamos la imagen hello-world a nuestro registro con el nombre hola

```
docker pull hello-world
docker tag hello-world localhost:5000/hola
docker push localhost:5000/hola
```

### (Opcional) Borramos caché

```
docker rmi hello-world
docker rmi localhost:5000/hola  # don't worry, no se borrará la imagen que posee el registro registry
```

### (Opcional) Si necesitamos parar el registro
```
docker stop registry
docker rm -v registry
``` 


## En el cliente
__Pasos para descargar imágenes__


En los equipos cliente debemos tener instalado también el paquete `docker.io`, así como configurar el demonio para que permita la conexión a sitios "inseguros" (sin HTTPS).

### Permitimos registros inseguros
```
nano /etc/docker/daemon.json
```

Añadir la siguiente línea:
```
{ "insecure-registries":["172.20.7.0:5000"] }
```

> Colocar en lugar de `172.20.7.0` la dirección IP del servidor de registro

### Reiniciamos daemon

```
sudo  systemctl  restart  docker
```

### Usamos la imagen hola del registro privado

```
docker  run  172.20.7.0:5000/hola
```
> Colocar en lugar de `172.20.7.0` la dirección IP del servidor de registro
