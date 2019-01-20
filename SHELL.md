# SHELL

## Referencias

- https://youtu.be/wM1uNqj71Ko

- https://ohmyz.sh/
- https://github.com/robbyrussell/oh-my-zsh
- https://github.com/bhilburn/powerlevel9k
- https://github.com/ryanoasis/nerd-fonts
- https://char-map.herokuapp.com/
- https://github.com/rupa/z

```
sudo  npm  install --global trash-cli
```


```
Ctrl+L    # clear , limpiar pantalla
``` 

## Cambiar a zsh

zsh es un shell compatible con bash, pero que añade varias funcionalidades. Una de las más interesantes es su **integración con git**. 



**Instalamos shell**

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

**Instalación de Powerline fonts**


```shell
mkdir -p .local/share/fonts

wget  https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget  https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

mv  PowerlineSymbols.otf ~/.local/share/fonts/ 
mv  10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

fc-cache -vf ~/.local/share/fonts/
```

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

**Instalamos tema Powerlevel9k para Oh My ZSH**

```shell
# Descargamos tema
git  clone  https://github.com/bhilburn/powerlevel9k.git   ~/.oh-my-zsh/custom/themes/powerlevel9k
```

En `~/.zshrc` debemos establecer las líneas

```shell
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"

source  /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```


Reiniciamos la configuración

```sh
.   ~/.zshrc
```

## Powerline

https://powerline.readthedocs.io/en/latest/installation.html

## Terminales TTY

En los tradicionales TTY las fuentes se configuran de la siguiente forma:

**Comprobamos las fuentes instaladas**

```shell
ls  /usr/share/consolefonts
```

**Instalamos `awesome-terminal-fonts`**

```shell
# git clone https://github.com/gabrielelana/awesome-terminal-fonts.git

# cd awesome-terminal-fonts

# cp  build/*  ~/.local/share/fonts
# fc-cache  -vf  ~/.local/share/fonts
# cp  config/10-symbols.conf  ~/.config/fontconfig/conf.d
```

En `.zshrc` escribir

```shell
source  ~/.local/share/fonts/*.sh
```


**Editamos el archivo `/etc/default/console-setup`**

Por ejemplo:

```
ACTIVE_CONSOLES="/dev/tty[1-6]"
CHARMAP="UTF-8"
CODESET="guess"
FONTFACE="UbuntuMono-R"
FONTSIZE="16x8"
# SCREEN_WIDTH="80"
```

> Nota: Si la fuente a poner es `UbuntuMono-R-8x16.psf` debemos escribir FONTSIZE="16x8" (al revés)