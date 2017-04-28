# Habilitar soporte HTTP/2 en servidor Nginx

## Configuración de Nginx

- https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-with-http-2-support-on-ubuntu-16-04

> NOTA: Una forma sencilla de crear claves y certificados es usar la aplicación XCA. Es para entorno gráfico y multiplataforma.


## Comprobación con curl

* Para compilar curl con soporte http2
```
sudo apt-get install build-essential nghttp2 libnghttp2-dev 
http://curl.haxx.se/download/curl-7.46.0.tar.bz2
tar -xvjf curl-7.46.0.tar.bz2
cd curl-7.46.0
./configure --with-nghttp2 --prefix=/usr/local
make
sudo make install
sudo ldconfig
```
* Para usar la versión compilada (en lugar de /usr/bin/curl)
```
/usr/local/bin/curl --http2 -k -I https://localhost
/usr/local/bin/curl --http2 -k -I nghttp2.org
```