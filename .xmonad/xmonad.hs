import XMonad
import XMonad.Actions.WindowGo
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import XMonad.Util.Run

main = do
    xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

myConfig = defaultConfig
    { modMask = myModMask
    , terminal = myTerminal
    , startupHook = myStartupHook
    }

myModMask = mod4Mask
-- myTerminal = "urxvt"
-- myTerminal = "gnome-terminal"
myTerminal = "xterm"
myBar = "xmobar"

myStartupHook = do
    spawn "ibus-daemon -x -d"

myPP = xmobarPP { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" }

toggleStrutsKey XConfig { XMonad.modMask = modMask } = (modMask, xK_b)

myAdditiionalKeys = [ ((modMask, xK_w), runOrRaise "firefox" (className =? "Namoroka"))
                    ]

