--
-- http://www.elonflegenheimer.com/2012/06/22/xmonad-in-ubuntu-12.04-with-unity-2d.html
-- http://www.haskell.org/haskellwiki/Xmonad/Using_xmonad_in_Unity_2D
-- http://www.haskell.org/haskellwiki/Xmonad/Using_xmonad_in_Gnome#Starting_GNOME_with_xmonad
-- http://kmels.net/posts/how-to/install-xmonad-ubuntu-12.04.html
--

import XMonad
import XMonad.Config.Gnome

myManageHook = composeAll (
  [ manageHook gnomeConfig
  , className =? "Unity-2d-panel" --> doIgnore
  , className =? "Unity-2d-launcher" --> doIgnore
  ])

main = xmonad gnomeConfig { manageHook = myManageHook }
