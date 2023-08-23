-- https://github.com/nvim-telescope/telescope.nvim

return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.2',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
    config=function() 
            require('telescope').setup {

	    }
    end,
}
