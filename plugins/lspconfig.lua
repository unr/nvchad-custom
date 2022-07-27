-- Custom LSP Config from docs
-- https://nvchad.github.io/config/Lsp%20stuff#masonnvim

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local DefaultConfigServers = {
    "html",
    "cssls",
    "tailwindcss",
    "eslint",
    -- I don't seem to need vuels... eslint does what I'm expecting?
    -- will revisit when it's time for volar
    -- "vuels",
}

for _, lsp in ipairs(DefaultConfigServers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end


-- custom setup for sumneko_lua
lspconfig.sumneko_lua.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = {"vim", "require", "ipairs"},
            },
        },
    },
})

-- lspconfig.vuels.setup({
--     config = {
--         vetur = {
--             completion = {
--                 autoImport = false,
--                 tagCasing = "initial",
--                 useScaffoldSnippets = false
--             },
--             validation = {
--                 script = true,
--                 style = true,
--                 template = true
--             }
--         }
--     }
-- })
