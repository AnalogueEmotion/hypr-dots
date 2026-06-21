-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
	--hl.exec_cmd(terminal)
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("hyprctl dispatch workspace 1")
	hl.exec_cmd("copyq --start-server")
	hl.exec_cmd("hyprpm reload -n")
	hl.exec_cmd("~/.azotebg-hyprland")
	hl.exec_cmd("waypaper --restore")
	hl.exec_cmd("noctalia")
	hl.exec_cmd("hypridle & hyprpaper & nm-applet")
end)
