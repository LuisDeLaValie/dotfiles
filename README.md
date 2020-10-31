## BSPwm en ArchLinux ##

Este es mi gestor de ventanas BSPwm con Lemonbar personalizados e integrados con Dmenu y un par de scripts que facilitan el uso diario, sin sacrificar el rendimiento.

**Instalacion:**

Clonar e instalar los repositorios `make && sudo make install` a travez de la terminal.

```
git clone https://github.com/baskerville/bspwm
git clone https://github.com/baskerville/sxhkd
git clone https://github.com/baskerville/xdo
git clone https://github.com/baskerville/sutils
git clone https://github.com/baskerville/xtitle
git clone https://github.com/mxhectorvega/dmenu
git clone https://github.com/mxhectorvega/st
git clone https://github.com/krypt-n/bar
```
**Configuracion:**

Clonar y copiar los archivos de configuracion:

```
git clone https://github.com/mxhectorvega/bspwmarch

sudo cp -R ~/bspwmarch/* ~/.config
```

Otorgar permisos de ejecucion a los archivos:

```
sudo chmod -R 777 ~/.config/{bspwm,lemonbar,sxhkd}
```

En caso de no tener pantalla de inicio de sesion, agregar `exec bspwm` al archivo **~/.xinitrc** (si no cuenta con el archivo, cree uno nuevo y asigne permiso de ejecucion con `chmod +x`).

**Fuentes y temas:**

San Francisco (font), Awesome Font 5 Free (font icons), Awesome Font(font icons 2), Materia Dark Compact (gtk), Papirus (icons).


**Dependencias:**

```
sudo pacman -S alacritty slock nitrogen firefox telegram-desktop htop xarchiver neofetch leafpad ranger pcmanfm lxappearance dunst maim xclip sxiv calcurse zathura zathura-pdf-mupdf neovim mpv screenkey lxsession
```

```
yay -S picom-ibhagwan-git spotify spotify-adblock-linux --noeditmenu --noconfirm --needed
```


**Creditos:**

@mxhectorvega @darch7 @bourne_again
