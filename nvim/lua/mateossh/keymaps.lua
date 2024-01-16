vim.keymap.set('n', '<leader>bd', '<cmd>:bd<cr>') -- Close window

vim.keymap.set('n', '<leader>w/', '<cmd>:vsplit<cr>')
vim.keymap.set('n', '<leader>w-', '<cmd>:split<cr>')
vim.keymap.set('n', '<leader>wd', '<cmd>:close<cr>') -- Close window
vim.keymap.set('n', '<leader>wn', '<cmd>:enew<cr>')  -- Open new buffer
vim.keymap.set('n', '<leader>wh', '<C-w>h')
vim.keymap.set('n', '<leader>wk', '<C-w>k')
vim.keymap.set('n', '<leader>wj', '<C-w>j')
vim.keymap.set('n', '<leader>wl', '<C-w>l')
vim.keymap.set('n', '<leader>we', '<C-w>=')

vim.keymap.set('n', '<leader>sc', '<cmd>:noh<cr>')  -- Clear search results
