local function open_nvim_tree(data)

  -- buffer is a real file on the disk
  local real_file = vim.fn.filereadable(data.file) == 1

  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- only files please
  if not real_file and not no_name then
    return
  end

  -- open the tree but don't focus it
  require("nvim-tree.api").tree.toggle({ focus = false })
end

return {
	 "nvim-tree/nvim-tree.lua",
         auto_close = true,
	 dependencies = {'nvim-tree/nvim-web-devicons', opt = true},
	 config=function() 
            require('nvim-tree').setup {
-- 切换 nvim-tree 当前状态
		vim.api.nvim_set_keymap('n', '<A-1>', ':NvimTreeToggle<CR>', { noremap = true, silent = true }),
		vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
	    }
         end,

}
