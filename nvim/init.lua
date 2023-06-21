local base_dir = vim.env.LUNARVIM_BASE_DIR
    or (function()
      local init_path = debug.getinfo(1, "S").source
      return init_path:sub(2):match("(.*[/\\])"):sub(1, -2)
    end)()

if not vim.tbl_contains(vim.opt.rtp:get(), base_dir) then
  vim.opt.rtp:append(base_dir)
end

require("lvim.bootstrap"):init(base_dir)

require("lvim.config"):load()

local plugins = require "lvim.plugins"

require("lvim.plugin-loader").load { plugins, lvim.plugins }

require("lvim.core.theme").setup()

local Log = require "lvim.core.log"
Log:debug "Starting LunarVim"

local commands = require "lvim.core.commands"
commands.load(commands.defaults)

--tabnine

-- require('tabnine').setup({
--  disable_auto_comment=true,
--  accept_keymap="<Tab>",
--  dismiss_keymap = "<C-]>",
--  debounce_ms = 800,
--  suggestion_color = {gui = "#808080", cterm = 244},
--  exclude_filetypes = {"TelescopePrompt"},
--  log_file_path = nil, -- absolute path to Tabnine log file
--})
-- init.lua:

--require("lazy").setup({
--  { '/home/n-09/tabnine-nvim', build = "./dl_binaries.sh" },
--}



local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
})

--- neorg
-- require('neorg').setup {
--    load = {
--        ["core.defaults"] = {},
--        ["core.dirman"] = {
--            config = {
--                workspaces = {
--                    work = "~/notes/work",
--                    home = "~/notes/home",
--                }
--            }
--        }
--    }
-- }
--- mbuh keder:wq

--local lspconfig = require('lspconfig')

-- Install pyls if it is not installed
--local system_name = "linux"
--local py_version = "3.9"         -- set your python version here
--local py_dir = "/usr/bin/python" -- set your python path here

-- lspconfig.pyls.setup {
--  cmd = { py_dir .. py_version .. "/home/n-09/.local/bin/pyls" },
--  filetypes = { "python" },
-- root_dir = function(fname)
--    return lspconfig.util.find_git_ancestor(fname) or vim.loop.os_homedir()
--  end,
--  settings = {
--    pyls = {
--      plugins = {
--        pycodestyle = {
--          enabled = false,
--          maxLineLength = 100
--        },
--        pylint = {
--          enabled = true,
--          -- Change this to your preferred pylint path
--         executable = "/usr/bin/pylint"
--        }
--      }
--    }
--  }-
--}
