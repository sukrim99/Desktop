local wezterm = require("wezterm")
require("config.right-status").setup()
require("config.notify").setup()
require("config.tab-title").setup()

return {
  adjust_window_size_when_changing_font_size = false,
  automatically_reload_config = true,
  color_scheme = "tokyonight-storm",
  font = wezterm.font("DejaVuSansMono Nerd Font"),
	font_size = 10.0,
  -- status update timer
  status_update_interval = 1000,
  -- tab_bar
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = false,
  use_fancy_tab_bar = false,
  tab_max_width = 20,
  show_tab_index_in_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,
  -- tab_bar_style = {
  --   background = "#24283b",
  --   active_tab = {
  --      background = "#f7768e",
  --      foreground = "#24283b",
  --   },
  --   inactive_tab = {
  --      background = "#c0caf5",
  --      foreground = "#24283b",
  --   },
  --   inactive_tab_hover = {
  --      background = "#c0caf5",
  --      foreground = "#24283B",
  --   },
  -- },
 -- window
  window_padding = {
    left = 35,
    bottom = 35,
    right = 35,
    top = 35,
  },
  window_close_confirmation = "NeverPrompt",
	window_background_opacity = 0.9,
}