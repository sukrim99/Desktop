local wezterm = require("wezterm")
require("config.right-status").setup()
-- require("config.notify").setup()
require("config.tab-title").setup()

local function font_with_fallback(name, params)
  local names = { name, "Apple Color Emoji", "azuki_font" }
  return wezterm.font_with_fallback(names, params)
end

local font_name = "JetBrainsMonoNL Nerd Font"

return {
  -- OpenGL for GPU acceleration, Software for CPU
  front_end = "OpenGL",

  color_scheme = 'tokyonight_storm',


  -- Font config
  font = font_with_fallback(font_name),
  font_rules = {
    {
      italic = true,
      font = font_with_fallback(font_name, { italic = true }),
    },
    {
      italic = false,
      font = font_with_fallback(font_name, { bold = true }),
    },
    {
      intensity = "Bold",
      font = font_with_fallback(font_name, { bold = true }),
    },
  },
  warn_about_missing_glyphs = false,
  font_size = 10,
  line_height = 1.0,
  dpi = 96.0,

  -- Cursor style
  default_cursor_style = "BlinkingUnderline",
  disable_default_mouse_bindings = true,
  -- X11
  enable_wayland = true,

  -- Keybinds
  disable_default_key_bindings = true,
  keys = {
    {
      key = [[\]],
      mods = "CTRL|ALT",
      action = wezterm.action({
        SplitHorizontal = { domain = "CurrentPaneDomain" },
      }),
    },
    {
      key = [[\]],
      mods = "CTRL",
      action = wezterm.action({
        SplitVertical = { domain = "CurrentPaneDomain" },
      }),
    },
    {
      key = "q",
      mods = "CTRL",
      action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
    },
    {
      key = "h",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ ActivatePaneDirection = "Left" }),
    },
    {
      key = "l",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ ActivatePaneDirection = "Right" }),
    },
    {
      key = "k",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ ActivatePaneDirection = "Up" }),
    },
    {
      key = "j",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ ActivatePaneDirection = "Down" }),
    },
    {
      key = "h",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),
    },
    {
      key = "l",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),
    },
    {
      key = "k",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),
    },
    {
      key = "j",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),
    },
    {
      -- browser-like bindings for tabbing
      key = "t",
      mods = "CTRL",
      action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
    },
    {
      key = "w",
      mods = "CTRL",
      action = wezterm.action({ CloseCurrentTab = { confirm = false } }),
    },
    {
      key = "Tab",
      mods = "CTRL",
      action = wezterm.action({ ActivateTabRelative = 1 }),
    },
    {
      key = "Tab",
      mods = "CTRL|SHIFT",
      action = wezterm.action({ ActivateTabRelative = -1 }),
    }, -- standard copy/paste bindings
    {
      key = "x",
      mods = "CTRL",
      action = "ActivateCopyMode",
    },
    {
      key = "v",
      mods = "CTRL",
      action = wezterm.action({ PasteFrom = "Clipboard" }),
    },
    {
      key = "c",
      mods = "CTRL",
      action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
    },
  },

  -- Aesthetic Night Colorscheme
  bold_brightens_ansi_colors = true,
  -- Padding
  window_padding = {
    left = 35,
    right = 35,
    top = 35,
    bottom = 35,
  },

  -- Tab Bar
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = false,
  use_fancy_tab_bar = false,
  tab_max_width = 20,
  show_tab_index_in_tab_bar = false,
  switch_to_last_active_tab_when_closing_tab = true,
  -- General
  automatically_reload_config = true,
  inactive_pane_hsb = { saturation = 1.0, brightness = 0.8 },
  window_background_opacity = 0.9,
  window_close_confirmation = "NeverPrompt",
  window_frame = { active_titlebar_bg = "#45475a", font = font_with_fallback(font_name, { bold = true }) },
}
