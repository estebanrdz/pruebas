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

**Instalamos tema Powerlevel9k para Oh My ZSH**

```shell
# Descargamos tema
git  clone  https://github.com/bhilburn/powerlevel9k.git  ~/.oh-my-zsh/custom/themes/powerlevel9k
```

En `~/.zshrc` establecemos línea a

```shell
ZSH_THEME="powerlevel9k/powerlevel9k"
```

Reiniciamos la configuración

```sh
.   ~/.zshrc
```