# Integración de GIT en SUBLIME TEXT.

## Pasos:
1. Instalar Sublime Text 3.
2. Instalar Package Control para Sublime. 
Las instrucciones están en https://packagecontrol.io/installation
3. Instalar utilidad GIT
En Debian/Ubuntu hacemos: `apt-get install git`.
En Windows, consulta a San Google.
4. Instalar el paquete GIT para SUBLIME TEXT. Para ello vamos a `Preferences --> Package Control --> Package Control: install package --> Git`
5. Para ejecutar comandos de git, pulsamos **Ctrl+Shift+P** y escribimos los comandos git deseados. Ejemplos:
```
git log 
git status
git add ...
git commit ...
git push 
git gitk    (necesario tener instalada aplicación gitk)
```
