local wezterm = require("wezterm")
return {
	font = wezterm.font("JuliaMono"),
	font_size = 13,
	color_scheme = "gruvbox",
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		top = "0",
		left = "0",
		right = "0",
		bottom = "0",
	},
	keys = {
		{ key = "Enter", mods = "CTRL", action = wezterm.action({ SendString = "\x1b[13;5u" }) },
		{ key = "Enter", mods = "SHIFT", action = wezterm.action({ SendString = "\x1b[13;2u" }) },
	},
    warn_about_missing_glyphs = false,
}
