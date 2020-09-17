#!/usr/bin/env dash

case "$1" in
    1)
        code --folder-uri $HOME/Documentos/proyectos/flutter/guia2020
    ;;
    2)
        code --folder-uri $HOME/Documentos/proyectos/flutter/driver_taxiApp
    ;;
    3)
        code --folder-uri $HOME/Documentos/proyectos/flutter/taxiApp
    ;;
    4) code $HOME/.config/sxhkd/ $HOME/.config/compton/ $HOME/.xinitrc $HOME/.config/bspwm/ $HOME/.config/polybar/
    ;;
    5)
        code $proy/xDesk/
    ;;
    6) code ;;
    7) code ;;
    8) code ;;
    9) code ;;
    
esac