# dotfiles
dotfiles for bspwm

istalar bspwm
-------
$ yay -s bspwm
instalr dependecias bsqpem
----------
$ sudo pacman -S libxcb xcb-util xcb-util-wm xcb-util-keysyms

correr bspwm
-----------
$ mkdir -p ~/.config/{bspwm,sxhkd}
$ cp /usr/local/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
$ cp /usr/local/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
$ chmod u+x ~/.config/bspwm/bspwmrc

COstruir e instalr
--------
$ git clone https://github.com/baskerville/bspwm.git
$ git clone https://github.com/baskerville/sxhkd.git
$ cd bspwm && make && sudo make install
$ cd ../sxhkd && make && sudo make install

instalr comptom
--
$ yay -s compton
instalr feh
--
$ yay -s feh

intalar  
alacritty
ranger
rofi
