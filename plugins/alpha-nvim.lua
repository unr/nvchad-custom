--
-- config = function()
--    local alpha = require'alpha'
--    local dashboard = require'alpha.themes.dashboard'
--    dashboard.section.header.val = {
--        [[                               __                ]],
--        [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
--        [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
--        [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
--        [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
--        [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
--    }
--    dashboard.section.buttons.val = {
--        dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
--        dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
--    }
--    local handle = io.popen('fortune')
--    local fortune = handle:read("*a")
--    handle:close()
--    dashboard.section.footer.val = fortune
--    dashboard.config.opts.noautocmd = true
--    vim.cmd[[autocmd User AlphaReady echo 'ready']]
--    alpha.setup(dashboard.config)
-- end,

local present, alpha = pcall(require, "alpha")

if not present then
    return
end

local dashboard = require'alpha.themes.dashboard'

local neovim = {
    [[                               __                ]],
    [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
    [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
    [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
    [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
    [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
}

local arr = {
    [[⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣤⣀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀]],
    [[⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀]],
    [[⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄]],
    [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣧]],
    [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿]],
    [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⡿]],
    [[⢠⣤⣤⣤⣤⣤⣤⣼⣿⣿⣿⣿⣿⣿⣿⣤⣤⣤⣤⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⠇]],
    [[⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀]],
    [[⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀]],
    [[⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⠉⠉⠉⠙⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⡄⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⡄]],
}

local rivalry = {
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠰⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⠛⠛⠛⠛⠻⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⡀⠀⠀⠀⠀⢀⣀⡀⠀⢀⣀⡀⠀⠀⠀⠀⢀⣀⣀⠀⠀⢀⠀⠀⠀⠀⠀⢀⣀⡀⠀⠀⠀⠀⠀⢀⣀⣀⣀⡀⠀⠀⢀⣀⣀⠀⠀⠀⠀⢀⣀⡀]],
    [[⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣦⡀⠀⢸⣿⣿⠀⠘⣿⣿⡄⠀⠀⢀⣿⣿⠏⠀⢀⣿⣆⠀⠀⠀⠀⢸⣿⡏⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣦⠈⢻⣿⣧⠀⠀⣠⣿⣿⠃]],
    [[⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⡇⠀⢸⣿⣿⠀⠀⠘⣿⣿⡄⠀⣾⣿⠏⠀⢀⣾⣿⣿⡆⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⣿⣿⡇⠀⠈⣿⣿⡇⠀⠻⣿⣷⣰⣿⡿⠁⠀]],
    [[⢠⣤⣤⣤⣤⣤⣿⣿⣿⣿⣿⣿⣤⣤⣤⣤⣴⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣷⣶⣾⣿⡿⠁⠀⢸⣿⣿⠀⠀⠀⠹⣿⣷⣼⣿⡏⠀⢀⣾⣿⠃⢿⣿⡄⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⣿⣿⣷⣶⣾⣿⠟⠀⠀⠀⠹⣿⣿⡿⠁⠀⠀]],
    [[⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡏⠉⢿⣿⣆⠀⠀⢸⣿⣿⠀⠀⠀⠀⠹⣿⣿⡟⠀⠀⣼⣿⣿⣶⣾⣿⣿⡄⠀⢸⣿⣗⠀⠀⠀⠀⠀⣿⣿⡏⠙⣿⣿⡄⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀]],
    [[⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠈⢿⣿⣦⠀⢸⣿⣿⠀⠀⠀⠀⠀⠹⡟⠀⠀⣼⣿⡏⠀⠀⠀⠘⣿⣿⡄⢸⣿⣿⣿⣿⣿⣿⠀⣿⣿⡇⠀⠘⣿⣿⣄⠀⠀⠀⣿⣿⡇⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⠿⠿⠿⢿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠀⠀⠀⠘⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠿⠿⠿⠿⠿⠿⠀⠀⠀⠀⠀⠘⠿⠿⠿⠿⠿⠧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
}

local headers = { neovim, arr, rivalry}

local function header()
  return headers[ math.random(#headers) ]
end


dashboard.section.header.val = header();
dashboard.section.buttons.val = {
    dashboard.button( "ff", "  Find in Git" , "<cmd> Telescope find_files <CR>"),
    dashboard.button( "fa", "  Find All" , "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>"),
    dashboard.button( "C-n", "  Open nvim-tree" , "<cmd> NvimTreeToggle <CR>"),
    dashboard.button( "fo", "  Open Recent" , "<cmd> Telescope oldfiles <CR>"),
    dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
}
dashboard.section.footer.val = "unr <3 vim"

dashboard.section.header.opts.hl = "RivalryOrange"
vim.cmd("hi RivalryOrange guifg=Orange")

alpha.setup(dashboard.config)
