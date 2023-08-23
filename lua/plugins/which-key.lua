-- https://github.com/folke/which-key.nvim

local builtin = require('telescope.builtin')
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
  end,
  config= function()
	local wk = require("which-key")
	local groups = {
		["g"] = {
			name= "go to",
			l = {":bnext<CR>","NextTab"},
			h = {":bpre<CR>","PreTab"},
			L = {":blast<CR>","LastTab"},
			H = {":bfirst<CR>","FirstTab"},
		},
		["<leader><leader><leader>"] = {":NvimTreeFindFile<CR>","NvimTreeFindFile"},
		["<leader>f"] = {
			f = {builtin.find_files, "find files",{}}	,
			g = {builtin.live_grep, "live grep",{}}	,
			b = {builtin.buffers, "find buffers",{}}	,
			h = {builtin.help_tags, "help tags",{}}	,
		},
		["L"] = {"$","LastLine"},
		["H"] = {"^","FirstLine"},

	}
	local opts = {silent = true, noremap = true}
	wk.register(groups, opts)
  end,
}

