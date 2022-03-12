vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  use { 'tpope/vim-commentary' }
  use { 'scrooloose/nerdtree' }

  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-nvim-lsp' }

  use { 'nvim-lua/popup.nvim' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'nvim-telescope/telescope.nvim' }

  use { 'nvim-treesitter/nvim-treesitter', run = TSUpdate }

  use { 'NTBBloodbath/rest.nvim' }
  use { 'lewis6991/gitsigns.nvim' }
  use { 'ahmedkhalf/project.nvim' }
  use { 'numToStr/comment.nvim' }
  use { 'TimUntersberger/neogit' }

  use { 'nvim-orgmode/orgmode' }


  use { 'ghifarit53/daycula-vim' }
  use { 'joshdick/onedark.vim' }
  use { 'tek256/simple-dark' }
  use { 'rakr/vim-two-firewatch' }
  use { 'junegunn/seoul256.vim' }
  use { 'sts10/vim-pink-moon' }
  use { 'adigitoleo/vim-mellow' }
  use { 'savq/melange' }
  use { 'Mangeshrex/uwu.vim' }
  use { 'owickstrom/vim-colors-paramount' }
  use { 'relastle/bluewery.vim' }

end)
