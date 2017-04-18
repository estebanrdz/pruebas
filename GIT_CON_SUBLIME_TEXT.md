# Integración de GIT en SUBLIME TEXT.

## Pasos:
1. Instalar *Sublime Text 3*.
2. Instalar *Package Control* para Sublime. 
 Las instrucciones están en https://packagecontrol.io/installation
3. Instalar utilidad *Git*
 En Debian/Ubuntu hacemos: `apt-get install git`.
 En Windows, consulta a San Google.
4. En Sublime Text, vamos a `Preferences --> Package Control --> Package Control: install package --> Git`
5. Para ejecutar comandos de git, pulsamos **Ctrl+Shift+P** y escribimos los comandos git deseados. Ejemplos:
```
git log 
git status
git add all
git commit  (Introducimos mensaje y cerramos para poder hacer push)
git push 
git gitk    (necesario tener instalada aplicación gitk)
```
