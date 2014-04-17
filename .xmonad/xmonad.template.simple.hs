-- in ~/.xmonad
-- https://gist.github.com/kofno/1300108
 
import XMonad
import XMonad.Util.Run
import XMonad.Config.Gnome
import XMonad.Hooks.ICCCMFocus
--import XMonad.Config.Desktop
import XMonad.Hooks.ManageDocks
import XMonad.Util.EZConfig
--import XMonad.Util.EZConfig (additionalKeys)
import XMonad.Layout.Gaps
import Data.List
 
myManageHook = composeAll . concat $
  [ [ className =? "Firefox-bin" --> doShift "6:ff" ]
  , [ className =? "Firefox" --> doShift "6:ff" ]
  , [(className =? "Firefox" <&&> resource =? "Dialog") --> doFloat]
  , [ className =? "Vim" --> doShift "2:vim" ]
  , [ className =? "VimClient" --> doShift "2:vim" ]
  , [ className =? "Unity-2d-panel" --> doIgnore ]
  , [ className =? "Unity-2d-launcher" --> doIgnore ]
  ]
 
--myLayouts = gaps [(U, 24)] $ layoutHook gnomeConfig
myLayouts = avoidStruts $ layoutHook gnomeConfig
 
main = xmonad $ gnomeConfig
  { workspaces = ["1","2","3","4","5","6","7","8","9","0","-","="]
  --, manageHook = myManageHook <+> manageHook gnomeConfig
  , manageHook = manageDocks <+> myManageHook <+> manageHook gnomeConfig 
  , layoutHook = myLayouts
  , logHook = takeTopFocus
  -- mod1Mask = Left Alt, mod3Mask = Right Alt, mod4Mask = Windows Key
  , modMask = mod1Mask
  , terminal = "urxvt"
  , focusFollowsMouse = False
  }

--`additionalKeysP` [ ("M-S-q", spawn "gnome-session-quit --power-off") ]
