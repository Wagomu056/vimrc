local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- 背景透過
config.window_background_opacity = 0.85

-- カラースキームの設定
config.color_scheme = 'Dracula (Official)'

-- フォントの設定
config.font = wezterm.font("HackGen35 Console NF", {weight="Medium", stretch="Normal", style="Normal"})

-- フォントサイズの設定
config.font_size = 16

-- タブが１つなら隠す
config.hide_tab_bar_if_only_one_tab = true

config.debug_key_events = true

return config

