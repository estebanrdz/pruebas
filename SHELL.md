# SHELL

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

- [Sitio web](https://ohmyz.sh/)
- [Repositorio en Github](https://github.com/robbyrussell/oh-my-zsh)


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



**Instalamos tema Powerlevel9k para Oh My ZSH**

```shell
# Descargamos tema
git  clone  https://github.com/bhilburn/powerlevel9k.git   ~/.oh-my-zsh/custom/themes/powerlevel9k
```

En `~/.zshrc` debemos establecer las líneas

```shell
ZSH_THEME="powerlevel9k/powerlevel9k"

source  /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```


Reiniciamos la configuración

```sh
.   ~/.zshrc
```
