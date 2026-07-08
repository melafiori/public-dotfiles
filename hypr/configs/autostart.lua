require("colors")
-- env variables
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("GTK_THEME", "Adwaita:dark")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
-- Auto starts
hl.on("hyprland.start", function ()
	hl.exec_cmd("hypridle")
	hl.exec_cmd("hyprpm reload")
	hl.exec_cmd("hyprctl setcursor 'Miku Cursor' 30")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'THEME_NAME'")
	hl.exec_cmd("hyprsunset")
	hl.exec_cmd("flatpak run dev.vencord.Vesktop")
	hl.exec_cmd("awww-daemon & firefox")
	hl.exec_cmd("waybar")
	hl.exec_cmd("kitty")
	hl.exec_cmd("clipse -listen")
	hl.exec_cmd("espanso start")
end)

-- split plugin
--local smw = require("split-monitor-workspaces")
--smw.setup({
--	workspace_count = 5,
--})

-- plugin conf
hl.config({
	plugin = {
		scrolloverview = {
			gesture_distance = 300,
			scale = 0.5,
			workspace_gap = 100,
			layout = "vertical",
			wallpaper = 0,
			blur = false,

			shadow = {
				enabled = false,
				range = 50,
				render_power = 3,
				color = 0xee1a1a1a,
			},
		},
	},
})




-- INPUT
hl.config({
	input = {
		kb_layout = "latam",

		follow_mouse = 1,

		sensitivity = 0
	},
})

-- misc

hl.config({
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo	= true,
		disable_splash_rendering = true
	},
})
