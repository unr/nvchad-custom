-- stolen starting sample from nvchad
local present, sad = pcall(require, "sad")

if not present then
    return
end

-- https://github.com/ray-x/sad.nvim#configure
local config = {
	diff = 'delta', -- you can use `diff`, `diff-so-fancy`
	ls_file = 'fd', -- also git ls_file
	exact = false, -- exact match
	vsplit = false, -- split sad window the screen vertically, when set to number
}


sad.setup(config)
