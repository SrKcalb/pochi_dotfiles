-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
 hl.on("hyprland.start", function ()
   hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
   hl.exec_cmd("/usr/bin/gnome-keyring-daemon --start --components=secrets")
   hl.exec_cmd("waybar & awww-daemon & vesktop & spotify-launcher")
   hl.exec_cmd("sleep 1 && swww img /home/fish/src/Hyprlain/src/hyprland/src/assets/media/anim/bg_dark_anim_1_08.gif --outputs DP-1")
   hl.exec_cmd("sleep 1 && swww img ~/src/Pictures/wallpaperps/5CB.png --outputs DP-3")
 end)

