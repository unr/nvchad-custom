-- stolen starting sample from nvchad
local present, truezen = pcall(require, "truezen")

if not present then
    return
end

-- https://github.com/Pocco81/true-zen.nvim#setup-configuration
local config = {
}


truezen.setup(config)
