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
	vsplit = true, -- split sad window the screen vertically, when set to number
	-- it is a threadhold when window is larger than the threshold sad will split vertically,
	height_ratio = 0.6, -- height ratio of sad window when split horizontally
	width_ratio = 0.6, -- height ratio of sad window when split vertically
}


sad.setup(config)
