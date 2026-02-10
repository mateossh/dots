return {
	"nvim-telescope/telescope.nvim",

	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>" },
		{ "<leader>bb", "<cmd>Telescope buffers<cr>" },
		{ "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending<cr>" },
	},
}
