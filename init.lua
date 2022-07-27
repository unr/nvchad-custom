-- custom nvim configs here

local opt = vim.opt

-- 4 tab width dream
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false

-- I feel like smartindent is making weird stuff after comments happen
opt.smartindent = true



-- never wrap unless I ask for it
vim.wo.wrap = false
vim.wo.linebreak = false

