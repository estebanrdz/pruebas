# SHELL (zsh)

zsh es un shell compatible con bash, pero que añade varias funcionalidades. Una de las más interesantes es su **integración con git**. 

## Referencias

- https://youtu.be/wM1uNqj71Ko

- https://ohmyz.sh/
- https://github.com/robbyrussell/oh-my-zsh
- https://github.com/bhilburn/powerlevel9k
- https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config
- https://github.com/ryanoasis/nerd-fonts
- https://char-map.herokuapp.com/
- https://github.com/rupa/z

```shell 
sudo  npm  install --global trash-cli
```


```
Ctrl+L    # clear , limpiar pantalla
``` 

## Instalación

**Instalamos shell, plugin y tema**

```shell
sudo  apt  install  zsh  zsh-syntax-highlighting  zsh-theme-powerlevel9k
```

**Descargamos y ejecutamos script de configuración automática (Oh My ZSH)** 

```shell
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
```


**Establecemos zsh como shell por defecto**

```shell
chsh  -s  /bin/zsh
```

**Instalación Nerd fonts**

Vamos a https://github.com/ryanoasis/nerd-fonts, descargamos la fuente deseada y la instalamos en el sistema. Puede hacerse desde el GUI, con la herramienta que proporciona el DE para manejo de tipos de letra. 



**Instalamos tema Powerlevel9k para Oh My ZSH**

```shell
# Descargamos tema
git  clone  https://github.com/bhilburn/powerlevel9k.git   ~/.oh-my-zsh/custom/themes/powerlevel9k
```

En `~/.zshrc` debemos establecer las líneas

```shell
POWERLEVEL9K_MODE='nerdfont-complete'
ZSH_THEME="powerlevel9k/powerlevel9k"

source  /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```


Reiniciamos la configuración

```sh
.   ~/.zshrc
```

## Fuentes en TTY

Desgraciadamente los terminales tradicionales trabajan con fuentes en formato de bits, no vectoriales como las usadas previamente. 

Por lo tanto no es posible aplicar a las TTYs los temas que usan fuentes TTF. 