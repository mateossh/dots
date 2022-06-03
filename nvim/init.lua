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

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'f110024d539e676f25b72b7c80b0fd43c34264ef',
    files = {'src/parser.c', 'src/scanner.cc'},
  },
  filetype = 'org',
}

require'nvim-treesitter.configs'.setup {
  -- If TS highlights are not enabled at all, or disabled via `disable` prop, highlighting will fallback to default Vim syntax highlighting
  highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
}

vim.cmd [[
  set foldmethod=expr
  set foldexpr=nvim_treesitter#foldexpr()
]]

opt('o', 'foldenable', false)



require('gitsigns').setup()
require('project_nvim').setup()
require('todo-comments').setup()
require('mateossh.comment')
require('mateossh.neogit')
require('mateossh.orgmode')

require('telescope').load_extension('projects')


-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


opt('o', 'background', 'dark')
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
vim.keymap.set('n', '<leader>/', '<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending<cr>')

map('n', '<leader>sc', '<cmd>:noh<cr>')  -- Clear search results

map('n', '<leader>rr', "<cmd>:lua require('rest-nvim').run()<cr>")
map('n', '<leader>gs', '<cmd>:Neogit<cr>')
