-- make sure you maintain the structure of `core/default_config.lua` here,
local M = {}

M.ui = {
   -- theme = "chadracula",
   theme = "catppuccin",
}

M.plugins = {
   user = require "custom.plugins",
   override = require "custom.override",
   -- remove = {},
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
