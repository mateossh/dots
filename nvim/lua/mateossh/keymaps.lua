local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map('n', '<leader>bd', '<cmd>:bd<cr>') -- Close window

map('n', '<leader>w/', '<cmd>:vsplit<cr>')
map('n', '<leader>w-', '<cmd>:split<cr>')
map('n', '<leader>wd', '<cmd>:close<cr>') -- Close window
map('n', '<leader>wn', '<cmd>:enew<cr>')  -- Open new buffer
map('n', '<leader>wh', '<C-w>h')
map('n', '<leader>wk', '<C-w>k')
map('n', '<leader>wj', '<C-w>j')
map('n', '<leader>wl', '<C-w>l')
map('n', '<leader>we', '<C-w>=')

map('n', '<leader>sc', '<cmd>:noh<cr>')  -- Clear search results
