return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.3',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find file in directory"},
		{ "<leader>gf", "<cmd>Telescope git_files<cr>", desc = "Find file in git"},
	},
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>fs', function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end)
	end
}
