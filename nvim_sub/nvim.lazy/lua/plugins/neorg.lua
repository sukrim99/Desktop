return {
  "nvim-neorg/neorg",
  run = ":Neorg sync-parsers", -- This is the important bit!
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              work = "~/catatan/work",
              home = "~/catatan/home",
            },
          },
        },
      },
    })
  end,
}
--
--
--
--[[
--    ROOT NEORG FILE
--    This file is the beginning of the entire plugin. It's here that everything fires up and starts pumping.
--]]
