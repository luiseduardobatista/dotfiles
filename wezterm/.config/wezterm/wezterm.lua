-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:

config.window_decorations = "RESIZE"
config.color_scheme = "rose-pine"
config.font = wezterm.font("JetBrainsMono Nerd Font")
-- config.window_background_opacity = 0.75
config.show_tabs_in_tab_bar = false
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.enable_tab_bar = false
-- and finally, return the configuration to wezterm
return config
