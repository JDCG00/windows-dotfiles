-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

local dimmer = {
  brightness = 0.025,
  saturation = 1.5
}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Dracula (Official)'
config.font = wezterm.font '0xProto Nerd Font'
config.default_prog = { 'C:/Program Files/PowerShell/7/pwsh.exe' }
config.background = {
  {
    source = {
      File = 'C:/Users/JD/Desktop/ALL/Images/Wallpapers/lone-samurai-sekiro-thumb.jpg',
    },
    hsb = dimmer
  }
}
config.default_cursor_style = "BlinkingBar"
config.use_fancy_tab_bar = false

return config
