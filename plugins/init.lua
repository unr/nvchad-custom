
return {

    -- improved movement with lightspeed
    ["ggandor/lightspeed.nvim"] = {},

    -- just let me repeat things
    ["tpope/vim-repeat"] = {},

    -- keep my windows stable, please
    ["luukvbaal/stabilize.nvim"] = {
        config = function()
            require("stabilize").setup()
        end,
    },

    -- surrounding in vim, as I remember it
    ["kylechui/nvim-surround"] = {
        config = function()
            require("nvim-surround").setup()
        end,
    },

    -- dashboard, please!
    ["goolord/alpha-nvim"] = {
        disable = false,
        config = function()
            require "custom.plugins.alpha-nvim"
        end,
    },

    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },

    -- overrides handles config for mason
    -- but need to ensure it's installed correctly with plugins I think
    ["williamboman/mason.nvim"] = {},
    ["williamboman/mason-lspconfig.nvim"] = {},

    -- Formatting with null-ls
    ["jose-elias-alvarez/null-ls.nvim"] = {
        after = "nvim-lspconfig",
        config = function()
            require "custom.plugins.null-ls"
        end,
    },

    -- -- configure which LSP to install with :MasonInstallAll
    -- ["williamboman/mason.nvim"] = {
    --     ensure_installed = {
    --         -- lua stuff
    --         "lua-language-server",
    --         "stylua",
    --
    --         -- web dev
    --         "css-lsp",
    --         "html-lsp",
    --         "json-lsp",
    --         "eslint_d",
    --         "prettierd",
    --         "tailwindcss-language-server",
    --         "vetur-vls",
    --     },
    --     config = function()
    --         require("custom.plugins.mason").setup()
    --     end,
    -- },
    --
    -- ["williamboman/mason-lspconfig.nvim"] = {
    --     config = function()
    --         require("custom.plugins.mason").lsp()
    --     end,
    --     -- module = "mason-lspconfig",
    --     -- cmd = "VimEnter"
    -- },


    -- going back to attempting to use null-ls for formatting
    -- ["mhartington/formatter.nvim"] = {
    --     config = function()
    --         require "custom.plugins.formatter"
    --     end
    -- },

    -- overwriting default nvim-tree setup for vinegar style
    ["kyazdani42/nvim-tree.lua"] = {
        config = function()
            require "custom.plugins.nvimtree"
        end
    },

    -- enable linting/formatting with LSP
    ["folke/trouble.nvim"] = {
        -- after = "null-ls",
        config = function()
            require "custom.plugins.trouble"
        end,
    },

    -- TODO, add in headwind support?
    -- https://github.com/steelsojka/headwind.nvim
}
