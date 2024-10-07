local wezterm = require 'wezterm'

local AppleClassicTheme = wezterm.color.get_builtin_schemes()['Apple Classic']
local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = 'RESIZE'

config.keys = {
  {
    key = 'k',
    mods = 'CMD',
    action = wezterm.action.ClearScrollback 'ScrollbackAndViewport',
  },
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitPane {
      direction = 'Right'
    }
  },
  {
    key = 'd',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Down'
    }
  },
  {
    key = 'p',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivateCommandPalette
  },
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true }
  }
}

config.background = {
  {
    source = {
      Color = "#000"
    },
    height = "100%",
    width = "100%",
  },
  {
    source = {
      File = '/Users/tim.novis/termbg-sky-compressed.jpeg'
    },
    opacity = 0.1,
    height = "Cover",
    width = "Cover",
    vertical_align = "Middle",
    hsb = { brightness = 0.5 }
  },
}

config.front_end = "WebGpu"

AppleClassicTheme.brights = {
  "#686868", "#f7e163", "#5ffa68", "#fffc67", "#6871ff", "#ff77ff", "#cefa82", "#ffffff",
}

config.color_schemes = {
  ["My Default"] = wezterm.color.get_default_colors(),
  ["Apple Classic Modified"] = AppleClassicTheme,
}

config.color_scheme = "Apple Classic Modified"

return config
