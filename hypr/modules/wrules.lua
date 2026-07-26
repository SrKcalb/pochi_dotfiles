--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful
--local suppressMaximizeRule = 
hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

   suppress_event = "maximize",
})
--suppressMaximizeRule:set_enabled(false)

hl.window_rule({

    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name = "vesktop-hide",  -- or discord
    match = { class = "vesktop|discord|com\\.discordapp\\.Discord" },
    workspace = "special:discord"
})

hl.window_rule({
    name = "spotify-hide",
    match = { class = "Spotify" },
    workspace = "special:spotify"
})

hl.window_rule({
    name = "steam-hide",
    match = { class = "steam" },
    workspace = "special:steam"
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})


hl.window_rule({
    name = "spotify-transparent",
    match = { class = "Spotify" },
    opacity = 0.90,           -- play with 0.7 - 0.95
    -- blur = true,           -- if you want extra blur behind it
})

hl.window_rule({
    name = "kitty-transparent",
    match = { class = "kitty" },
    opacity = 0.85,           -- play with 0.7 - 0.95
    -- blur = true,           -- if you want extra blur behind it
})


hl.window_rule({
    name = "ghostty-transparent",
    match = { class = "com.mitchellh.ghostty" },
    opacity = 0.85,           -- play with 0.7 - 0.95
    -- blur = true,           -- if you want extra blur behind it
})

-- Terminal opens floating (not tiled)
hl.window_rule({
    name = "kitty-float",
    match = { class = "kitty" },
    float = true,
    size = { 1200, 800 },      -- initial size (adjust as you like)
    center = true,             -- open in the center
})

-- Terminal opens floating (not tiled)
hl.window_rule({
    name = "ghostty-float",
    match = { class = "com.mitchellh.ghostty" },
    float = true,
    size = { 1200, 800 },      -- initial size (adjust as you like)
    center = true,             -- open in the center
})


hl.window_rule({
    name = "osu-window",
    match = { class = "osu!" },
    float = true,
    size = { 1920, 1080 },      -- initial size (adjust as you like)
    center = true,             -- open in the center
})






hl.layer_rule({
	name = "rofi-dropdown",
	match = { namespace = "rofi" },
	animation = "slide_bottom",
	dim_around = true,
})

hl.layer_rule({
	name = "notification-animations",
	match = { namespace = "swaync-control-center" },
	animation = "slide top"
})

-- Wlogout blurry transparent glass (fixed for Lua)
hl.layer_rule({
    name  = "wlogout-glass",
    match = { namespace = "logout_dialog" },

    blur = true,
    -- ignorezero is now:
    ignore_alpha = 0.1,   -- or 0.0 if you want full aggressive blur
    dim_around = false,
})
