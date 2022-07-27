-- DISABLED while I tinker with null-ls again
-- local present, formatter = pcall(require, "formatter")
--
-- if not present then
--     return
-- end

-- https://github.com/mhartington/formatter.nvim

-- Utilities for creating configurations
-- local util = require "formatter.util"
--
-- local usePrettier = function()
--     return {
--         exe = "prettierd",
--         args = {vim.api.nvim_buf_get_name(0)},
--         stdin = true
--     }
-- end

-- Provides the Format and FormatWrite commands
-- local config = {
--     logging = true,
--     log_level = vim.log.levels.WARN,
--     filetype = {
--         -- how do I install stylua??
--         -- lua = {
--         --     require("formatter.filetypes.lua").stylua,
--         -- },
--
--         vue = { usePrettier },
--         javascript = { usePrettier },
--     }
-- }

-- Auto format on save
-- local cmd = vim.cmd
-- cmd [[
--     augroup FormatAutogroup
--     autocmd!
--     autocmd BufWritePost * FormatWrite
--     augroup END
-- ]]


-- couldn't get this version working in "lua"
-- local api = vim.api
-- local autoFormat = api.nvim_create_augroup("FormatAutoGroup", { clear = true })
-- api.nvim_create_autocmd("BufWritePost", {
--   command = "BufWritePost * FormatWrite",
--   group = autoFormat,
-- })


formatter.setup(config);
