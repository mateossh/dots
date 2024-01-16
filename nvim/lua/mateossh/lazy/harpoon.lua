return {
  'ThePrimeagen/harpoon',

  config = function()
    require('telescope').load_extension('harpoon')
  end,

  keys = {
    { '<leader>gg', '<cmd>:lua require("harpoon.ui").toggle_quick_menu()<cr>' },
    { '<leader>ga', '<cmd>:lua require("harpoon.mark").add_file()<cr>' },

    { '<leader>gh', '<cmd>:lua require("harpoon.ui").nav_file(1)<cr>' },
    { '<leader>gj', '<cmd>:lua require("harpoon.ui").nav_file(2)<cr>' },
    { '<leader>gk', '<cmd>:lua require("harpoon.ui").nav_file(3)<cr>' },
    { '<leader>gl', '<cmd>:lua require("harpoon.ui").nav_file(4)<cr>' },
  }
}

