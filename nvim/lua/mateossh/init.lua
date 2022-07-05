-- INSPIRATION
-- https://github.com/icyphox/dotfiles/tree/master/config/nvim
-- https://github.com/tjdevries/config_manager
-- https://github.com/ThePrimeagen/.dotfiles


local fn = vim.fn
local execute = vim.api.nvim_command

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}

local function opt(scope, key, value)
	scopes[scope][key] = value
	if scope ~= 'o' then scopes['o'][key] = value end
end


local cmd = vim.cmd
local o = vim.o

require('mateossh.set')
require('mateossh.keymaps')
require('mateossh.plugins')
require('mateossh.lsp')
require('mateossh.cmp')
require('mateossh.treesitter')
require('mateossh.colorscheme')


require('gitsigns').setup()
require('project_nvim').setup()
require('todo-comments').setup()
require('mateossh.comment')
require('mateossh.neogit')
require('mateossh.orgmode')

require('refactoring').setup({})
require('harpoon').setup({})

require('telescope').load_extension('projects')
require('telescope').load_extension('refactoring')

-- remap to open the Telescope refactoring menu in visual mode
vim.api.nvim_set_keymap(
  "v",
  "<leader>rr",
  "<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
  { noremap = true }
)

-- Remap in normal mode will automatically find the variable under the cursor and print it
vim.api.nvim_set_keymap("n", "<leader>rv", ":lua require('refactoring').debug.print_var({})<CR>", { noremap = true })
-- Remap in visual mode will print whatever is in the visual selection
vim.api.nvim_set_keymap("v", "<leader>rv", ":lua require('refactoring').debug.print_var({})<CR>", { noremap = true })

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)



-- Mappings
map('n', '<leader>ft', '<cmd>:NERDTreeToggle<cr>') -- NERDTree (TODO: orphan nerdtree??)

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>bb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>pp', '<cmd>Telescope projects<cr>')
vim.keymap.set('n', '<leader>/', '<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending<cr>')

-- map('n', '<leader>rr', "<cmd>:lua require('rest-nvim').run()<cr>")
map('n', '<leader>gs', '<cmd>:Neogit<cr>')

map('n', '<leader>gg', '<cmd>:lua require("harpoon.ui").toggle_quick_menu()<cr>')
map('n', '<leader>ga', '<cmd>:lua require("harpoon.mark").add_file()<cr>')

map('n', '<leader>gh', '<cmd>:lua require("harpoon.ui").nav_file(1)<cr>')
map('n', '<leader>gj', '<cmd>:lua require("harpoon.ui").nav_file(2)<cr>')
map('n', '<leader>gk', '<cmd>:lua require("harpoon.ui").nav_file(3)<cr>')
map('n', '<leader>gl', '<cmd>:lua require("harpoon.ui").nav_file(4)<cr>')
