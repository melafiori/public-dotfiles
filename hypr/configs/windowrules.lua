----- Workspaces

-- Force workspace assignment
-- Bind workspaces 1-5 to HDMI-A-1
for i = 1, 5 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "HDMI-A-1"
    })
end

-- Bind workspaces 6-10 to DP-1
for i = 6, 10 do
    hl.workspace_rule({
        workspace = tostring(i),
        monitor = "DP-1"
    })
end

-- different layouts for diff workspaces!
hl.workspace_rule({ workspace = "2", layout = "scrolling" })
hl.workspace_rule({ workspace = "3", layout = "dwindle" })

-- Waypaper float
hl.window_rule({
	match = {
		class = "waypaper"
	},
	float = true,
	size	= "800 600"
})

-- Emoji (smile) float
hl.window_rule({
	match 	= {
		class = "^(it.mijorus.smile)$"
	},
	float	= true,
	pin 	= true,
	size 	= "400 500",
	move 	= "cursor -50% -50%"
})

-- Clipse float
hl.window_rule({
	match = {
		title = "clipse"
	},
	float 	= true,
	size 	= "400 500",
	pin	= true,
	center	= true
})


-- Steam friend list float
hl.window_rule({
	match = {
		class = "steam",
		title = "Friends List"
	},
	float = true
})

-- Pavucontrol float and size
hl.window_rule({
	match = {
		class = "org.pulseaudio.pavucontrol"
	},
	float = true,
	size = "800 400"
})


-- vlc float
hl.window_rule({
	match = {
		class = "vlc"
	},
	float = true,
	center = true,
	size = "800 600"
})

-- feh float
hl.window_rule({
    match = { 
	    class = "feh" 
    },
    float = true,
    center = true,
    size = "600 600"
    
})


-- Move apps to their respective workspace
hl.window_rule({ match = { class = "vesktop" }, suppress_event = "activate", workspace = "6" })
hl.window_rule({ match = { class = "steam" }, 	suppress_event = "activate", workspace = "7" })

-- Opacity control
hl.window_rule({ match = { class = "firefox" }, opaque = true })
hl.window_rule({ match = { class = "kitty"}, 	opacity = "0.85" })
hl.window_rule({ match = { class = "vesktop"}, 	opacity = "0.92" })


-- Waybar blur
hl.layer_rule({ match = { namespace = "waybar" }, blur = false })


-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
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

