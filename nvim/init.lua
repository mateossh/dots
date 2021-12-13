-- INSPIRATION
-- https://github.com/icyphox/dotfiles/tree/master/config/nvim
-- https://github.com/tjdevries/config_manager
vim.g.mapleader = ' ' -- Map leader to space

local fn = vim.fn
local execute = vim.api.nvim_command

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
	scopes[scope][key] = value
	if scope ~= 'o' then scopes['o'][key] = value end
end

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then options = vim.tbl_extend('force', options, opts) end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local cmd = vim.cmd
local o = vim.o

opt('w', 'relativenumber', true)
opt('w', 'number', true)
opt('w', 'list', true)
o.listchars='tab:│ ,nbsp:␣,trail:·,extends:>,precedes:<,eol:↴,space:⋅'
opt('w', 'colorcolumn', '80')
opt('o', 'clipboard', 'unnamedplus')
opt('o', 'termguicolors', true)

opt('w', 'cursorline', true)
opt('o', 'splitbelow', true)
opt('o', 'splitright', true)
opt('o', 'linespace', 3)
-- opt('o', 'autochdir', true)
opt('o', 'tabstop', 2)
opt('o', 'softtabstop', 2)
opt('o', 'shiftwidth', 2)
opt('o', 'expandtab', true)

opt('o', 'ignorecase', true)
opt('o', 'smartcase', true)



-- require('statusline')

require('plugins')
require('mateossh.lsp')
require('mateossh.cmp')

local ts = require 'nvim-treesitter.configs'
ts.setup {
    ensure_installed = 'maintained',
    highlight = {enable = true}
}

vim.cmd [[
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
]]

opt('o', 'foldenable', false)



require('gitsigns').setup()
require('project_nvim').setup()
require('mateossh.comment')
require('mateossh.neogit')

require('telescope').load_extension('projects')


cmd 'colorscheme melange'


-- Mappings
map('n', '<leader>ft', '<cmd>:NERDTreeToggle<cr>') -- NERDTree (TODO: orphan nerdtree??)

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

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>bb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>pp', '<cmd>Telescope projects<cr>')

map('n', '<leader>sc', '<cmd>:noh<cr>')  -- Clear search results

map('n', '<leader>rr', '<cmd>:lua require(\'rest-nvim\').run()<cr>')
map('n', '<leader>gs', '<cmd>:Neogit<cr>')
