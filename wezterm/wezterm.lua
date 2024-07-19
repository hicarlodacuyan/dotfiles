local wezterm = require("wezterm")

local config = {}

config.font = wezterm.font("JetBrains Mono")
config.window_padding = {
	top = 0,
	right = 0,
	bottom = 0,
	left = 0,
}
config.enable_tab_bar = false
config.color_scheme = "catppuccin-mocha"
config.term = "xterm-256color"
config.window_decorations = "RESIZE"
config.window_frame = {
	border_left_width = "1cell",
	border_right_width = "1cell",
	border_bottom_height = "0.5cell",
	border_top_height = "0.5cell",
}

return config
