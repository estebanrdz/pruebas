# CHULETA DE GIT

> NOTA: El modo -v es modo _verbose_ o detallado.
>
> Es aconsejable su uso puesto que muestra los detalles.

## Configuración mínima

```
git config  --global user.email    "jamj2000@gmail.com"
git config  --global user.name     "José Antonio Muñoz Jiménez"
git config  --global core.pager    cat
git config  --global core.editor   nano
git config  --global core.editor   "code --wait"
git config  --global push.default  simple
```

## Clonado de un repositorio

**`git clone  git@github.com:jamj2000/pruebas.git`**

Si hubiese submodulos:

```
git clone  --recursive git@github.com:jamj2000/pruebas.git
```

## Listado de Repositorios remotos

Para mostrar repositorios remotos asociados a repositorio local.

```
git remote  -v
```

## Actualización de submódulos

Para actualizar submódulos de terceros.

```
git submodule update  --init --recursive
```

## Listado de Ramas

Para ver todas las ramas, tanto locales como remotas.

```
git branch  -av
```

## Listado de Commits

**Todos los commits en todas las ramas**

Modo detallado:

```
git log  --graph --all
```

Modo simplificado:

```
git log  --graph --all --oneline
```

## Subida de commits de todas las ramas

```
git push origin --all
```

## Bajada de commits de todas las ramas

```
git pull origin --all
```


## Cambio de rama

Para cambiar de una rama a otra.

```
git checkout  _nombre-rama_
```

## Cambio de commit

Para cambiar de un commit a otro dentro de la misma rama.

```
git checkout  _hash_
```

Para volver al último commit de la rama

```
git checkout  _nombre-rama_
```

## Deshacer cambios realizados antes del commit

```
git checkout  -- .
```

## Crear rama local y saltar a ella

```
git checkout  -b _nombre-rama_
```

## Crear rama remota y subir cambios de rama local

```
git push  --set-upstream  origin  _nueva-rama_
git push  -u  origin  _nueva-rama_
```

## Borrar rama local

```
git branch  -d _nombre-rama_
```

## Borrar rama remota

```
git push  origin --delete _nombre-rama_
git push  origin -D _nombre-rama_
```

## Trabajo con Etiquetas

**Listar todas las etiquetas.**

Modo detallado \(4 líneas\):

```
git tag -n4
```

Modo simplificado:

```
git tag
```

**Crear etiqueta de tipo anotación.**

```
git tag -a v1.0 -m "Versión 1.0"  _hash_
```

**Eliminar etiqueta**

```
git tag -d v1.0 
```

**Subir todos los tags de todas las ramas**

```
git push  origin --tags
```

**Bajar todos los tags de todas las ramas**

```
git pull  origin --tags 
```



## Recursos

* [http://rogerdudler.github.io/git-guide/index.es.html](http://rogerdudler.github.io/git-guide/index.es.html)
* [http://cheat.errtheblog.com/s/git](http://cheat.errtheblog.com/s/git)
* [http://es.gitready.com/](http://es.gitready.com/)
* [http://gitready.com](http://gitready.com)  En inglés existe mayor contenido. También en alemán, pero no es plan.



