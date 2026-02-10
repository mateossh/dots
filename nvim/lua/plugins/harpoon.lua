return {
	"ThePrimeagen/harpoon",

	config = function()
		require("telescope").load_extension("harpoon")
	end,

	keys = {
		{ "<leader>gg", '<cmd>:lua require("harpoon.ui").toggle_quick_menu()<cr>', desc = "Toggle Harpoon quick menu" },
		{
			"<leader>ga",
			'<cmd>:lua require("harpoon.mark").add_file()<cr>',
			desc = "Add current file to Harpoon",
		},

		{
			"<leader>gh",
			'<cmd>:lua require("harpoon.ui").nav_file(1)<cr>',
			desc = "Navigate to Harpoon 1 file",
		},
		{
			"<leader>gj",
			'<cmd>:lua require("harpoon.ui").nav_file(2)<cr>',
			desc = "Navigate to Harpoon 2 file",
		},
		{
			"<leader>gk",
			'<cmd>:lua require("harpoon.ui").nav_file(3)<cr>',
			desc = "Navigate to Harpoon 3 file",
		},
		{
			"<leader>gl",
			'<cmd>:lua require("harpoon.ui").nav_file(4)<cr>',
			desc = "Navigate to Harpoon 4 file",
		},
	},
}
