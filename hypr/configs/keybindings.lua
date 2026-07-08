local browser = "firefox"
local mainMod = "SUPER"
local terminal = "kitty"
local menu = "wofi --show drun"
local fileManager = "kitty -e yazi"

-- System/windows binds
hl.bind(mainMod .. " + SHIFT + Q", hl.dsp.window.close(), {description = "Close a window"})
hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"), {description = "Exit hyprland"})
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("wlogout"), 	{ description = "open wlogout"})
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd("hyprlock"), { description = "Lock screen with hyprlock" })
hl.bind(mainMod .. " + W", function() hl.plugin.scrolloverview.overview("toggle") end)

hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Fullscreen/maximize
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }), 	{ description = "Maximizes active window" })
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }),{ description = "Makes a window fullscreen" })

-- Move focus
hl.bind(mainMod .. " + left", hl.dsp.focus({ 			direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ 			direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ 			direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ 			direction = "down" }))
-- Move windows
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.move({ 	direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ 	direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.move({	direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.move({	direction = "down"}))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key,	hl.dsp.focus({ workspace = i}))
	hl.bind(mainMod .. " + SHIFT + " .. key,	hl.dsp.window.move({ workspace = i}))
end

-- SCroll workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- move/resize
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- volume binds
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"),		{ locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"),	{ locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"),	{ locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"),		{ locked = true })


-- App binds
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser), 				{ description = "Open web browser" })
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd("steam"), 			{ description = "Open Steam" })
hl.bind(mainMod .. " + R ", hl.dsp.exec_cmd(menu), 				{ description = "Open menu/launcher" })
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal), 			{ description = "Open terminal" })
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager),			{ description = "Open file manager" })
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("code"),				{ description = "Open vscode" })
hl.bind(mainMod.. " + SHIFT + W", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"),	{ description = "Restart waybar" })
hl.bind(mainMod.. " + comma", hl.dsp.exec_cmd("kitty -e clipse"),		{ description = "Open clipboard manager" })
hl.bind(mainMod.. " + period", hl.dsp.exec_cmd("smile"),			{ description = "Open emoji manager" })
hl.bind(mainMod.. " + SHIFT + J", hl.dsp.exec_cmd("waypaper"),			{ description = "Open wallpaper manager" })
-- Screenshot utility
hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | swappy -f -'))
hl.bind("SUPER + Print", hl.dsp.exec_cmd('grim -g "$(slurp -d)" - | wl-copy'))



