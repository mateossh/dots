vim.keymap.set('n', '<leader>bd', '<cmd>:bd<cr>', { desc = "Close window" })

vim.keymap.set('n', '<leader>w/', '<cmd>:vsplit<cr>', { desc = "Vertical split" })
vim.keymap.set('n', '<leader>w-', '<cmd>:split<cr>', { desc = "Horizontal split" })
vim.keymap.set('n', '<leader>wd', '<cmd>:close<cr>', { desc = "Close window" })
vim.keymap.set('n', '<leader>wn', '<cmd>:enew<cr>', { desc = "Open new buffer" })
vim.keymap.set('n', '<leader>wh', '<C-w>h', { desc = "Move focus left" })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { desc = "Move focus down" })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { desc = "Move focus up" })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { desc = "Move focus right" })
vim.keymap.set('n', '<leader>we', '<C-w>=', { desc = "Equalize split window sizes" })

vim.keymap.set('n', '<leader>xw', '<cmd>:ToggleWordWrap<cr>', { desc = "Toggle word wrap" })

vim.keymap.set('n', '<leader>sc', '<cmd>:noh<cr>', { desc = "Clear search results" })
