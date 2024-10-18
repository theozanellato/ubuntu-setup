-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	-- window_decorations = "RESIZE",
	color_scheme = "Tokyo Night",
	enable_scroll_bar = true,
	default_cursor_style = "BlinkingBar",
	background = {
		{
			source = {
				File = "$HOME/m51.jpg",
				--File = "C:/Users/Theo/m51.jpg",
			},
			hsb = {
				hue = 1.0,
				saturation = 1.1,
				brightness = 0.5,
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Color = "#1a1a27",
			},
			width = "100%",
			height = "100%",
			opacity = 0.8,
		},
	},
	window_padding = {
		left = 3,
		right = 3,
		top = 0,
		bottom = 0,
	},
}

-- and finally, return the configuration to wezterm
return config
