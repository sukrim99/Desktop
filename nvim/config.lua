-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
--
lvim.transparent_window = true
lvim.format_on_save.enabled = true
lvim.format_on_save.pattern = {
  "*.lua",
  "*.py",
  "*.json",
  "*.js",
  "*.html",
  "*.scss",
  "*.yuck",
  "*.conf",
  "*.css",
}

lvim.autocommands = {
  {
    "BufEnter", -- see `:h autocmd-events`
    {
      -- this table is passed verbatim as `opts` to `nvim_create_autocmd`
      pattern = { "*.json", "*.jsonc" }, -- see `:h autocmd-events`
      command = "setlocal wrap",
    },
  },
}

lvim.plugins = {
  -- { "lunarvim/colorschemes" },
  {
    "stevearc/dressing.nvim",
    config = function()
      require("dressing").setup {
        input = { enabled = false },
      }
    end,
  },
  {
    "windwp/nvim-spectre",
    event = "BufRead",
    config = function()
      require("spectre").setup()
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript", "toml", "yaml", "conf", "lua", "json" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  {
    "nvim-neorg/neorg",
    ft = "norg", -- lazy-load on filetype
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/catatan/",
              },
            },
          },
        },
      }
    end, -- run require("neorg").setup()
  },
}
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black" },
  { name = "stylua" },
  -- { name = "prettierd" },
  {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    args = { "--print-width", "100" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    -- filetypes = { "typescript", "typescriptreact" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { name = "pylint" },
  -- { name = "sonarlint-language-server" },
  {
    name = "shellcheck",
    args = { "--severity", "warning" },
  },
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    name = "proselint",
  },
}
-- Keybind
-- yang di ubah

lvim.keys.normal_mode["a"] = "<Left>" -- move kiri
lvim.keys.normal_mode["d"] = "<Right>" -- move kanan
lvim.keys.normal_mode["s"] = "<Down>" --move bawah
lvim.keys.normal_mode["w"] = "<Up>" -- move atas
lvim.keys.normal_mode["r"] = [[:%s/\<<C-r><C-w>\>//g<Left><Left>]] --find and repleace satu kata di satu file
lvim.keys.normal_mode["t"] = "ciw" -- mereneme kata yang di select saja
lvim.keys.visual_mode["fr"] = "cgn" -- merubah kata di semua file melalui ranger

-- CTRL Keybind
lvim.keys.normal_mode["<C-d>"] = "dd" -- menghapus satu baris
lvim.keys.normal_mode["<C-x>"] = "d" -- cut satu baris
lvim.keys.normal_mode["<C-a>"] = "<Cmd>normal! ggVG<CR>" --selectt all

lvim.keys.normal_mode["<C-c>"] = "yy"
lvim.keys.insert_mode["<C-c>"] = '<Esc>"+yy'
