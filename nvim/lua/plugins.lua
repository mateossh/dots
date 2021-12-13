vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq { 'savq/paq-nvim', opt=true }     -- Let Paq manage itself

-- Add your packages

paq 'tpope/vim-commentary'
paq 'scrooloose/nerdtree'

paq 'neovim/nvim-lspconfig'
paq 'hrsh7th/nvim-cmp'
paq 'hrsh7th/cmp-buffer'
paq 'hrsh7th/cmp-path'
paq 'hrsh7th/cmp-nvim-lsp'

paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'

paq { 'nvim-treesitter/nvim-treesitter', run = TSUpdate }

paq 'NTBBloodbath/rest.nvim'
paq 'lewis6991/gitsigns.nvim'
paq 'ahmedkhalf/project.nvim'
paq 'numToStr/comment.nvim'
paq 'TimUntersberger/neogit'


paq 'ghifarit53/daycula-vim'
paq 'joshdick/onedark.vim'
paq 'tek256/simple-dark'
paq 'rakr/vim-two-firewatch'
paq 'junegunn/seoul256.vim'
paq 'sts10/vim-pink-moon'
paq 'adigitoleo/vim-mellow'
paq 'savq/melange'
paq 'Mangeshrex/uwu.vim'
