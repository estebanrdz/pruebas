# CHULETA DE GIT

>NOTA: El modo -v es modo _verbose_ o detallado.
>Es aconsejable su uso puesto que muestra los detalles.

## Repositorios remotos
Para mostrar repositorios remotos asociados a repositorio local.
```
git remote -v
```

## Ramas
Para ver todas las ramas, tanto locales como remotas.
```
git branch -av
```

## Listado de commits
**Todos los commits**

En modo detallado:
```
git log --graph 
```

En modo simplificado:
```
git log --graph --oneline
```


## Cambio de rama
Para cambiar de una rama a otra.
```
git checkout _nombre-rama_ 
```


## Cambio de commit
Para cambiar de un commit a otro dentro de la misma rama.
```
git checkout _hash_ 
```

Para volver al HEAD de la rama
```
git checkout _nombre-rama_ 
```


## Listado de etiquetas
**Todas las etiquetas.**

Modo detallado (4 líneas):
```
git tag -n4 
```
Modo simplificado:
```
git tag 
```
