# XMonad Config

#### Components 

Ubuntu 12.04 x64 Desktop

[GHC 7.6.3][1]

[Haskell Platform 2013.2.0.0][2]

XMonad 0.11

XMonad-Contrib 0.11.2

#### Copy Files to system dirs, soft link .xmonad dir to ~.

xmonad.desktop -> /usr/share/applications/xmonad.desktop/

xmonad.session -> /usr/share/gnome-session/sessions/xmonad.session

gnome-xmonad.desktop -> /usr/share/xessions/gnome-xmonad.desktop

gnome-session-xmonad -> /usr/bin/gnome-session-xmonad

.xmonad -> ~/.xmonad

#### Resources used

http://www.haskell.org/haskellwiki/Xmonad/Using_xmonad_in_Unity_2D

http://www.haskell.org/haskellwiki/Xmonad/Using_xmonad_in_Gnome#Starting_GNOME_with_xmonad

http://kmels.net/posts/how-to/install-xmonad-ubuntu-12.04.html

[1]:https://github.com/byrongibson/scripts/blob/master/install/haskell/haskell-ghc-install.sh
[2]:https://github.com/byrongibson/scripts/blob/master/install/haskell/haskell-platform-install.sh
