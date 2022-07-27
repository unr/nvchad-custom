-- overriding default plugin configs!

local M = {}

M.treesitter = {
    ensure_installed = {
        "vim",
        "html",
        "css",
        "javascript",
        "json",
        "toml",
        "markdown",
        "c",
        "bash",
        "lua",
        "norg",
        "php",
        "vue",
    },
}

M.blankline = {
    filetype_exclude = {
        "help",
        "terminal",
        "alpha",
        "packer",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "nvchad_cheatsheet",
        "lsp-installer",
        "norg",
        "",
    },
}

M["nvim-telescope/telescope.nvim"] = {
    defaults = {
        prompt_prefix = "   ",
    }
}

-- configure which LSP to install with :MasonInstallAll
M["williamboman/mason.nvim"] = {
    -- from default plugin config
    cmd = require("core.lazy_load").mason_cmds,
    ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "json-lsp",
        "eslint_d",
        "prettierd",
        "tailwindcss-language-server",
        "vetur-vls",
    },
    config = function()
        require("custom.plugins.mason").setup()
    end,
}

M["williamboman/mason-lspconfig.nvim"] = {
    module = "mason-lspconfig",
    cmd = "VimEnter",
    config = function()
        require("custom.plugins.mason").lsp()
    end,
}


return M
