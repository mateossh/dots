vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use { 'wbthomason/packer.nvim' }

  use { 'nvim-lua/popup.nvim' }
  use { 'nvim-lua/plenary.nvim' }

  -- use { 'scrooloose/nerdtree' }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-nvim-lsp' }

  use { 'nvim-telescope/telescope.nvim' }

  use { 'nvim-treesitter/nvim-treesitter', run = TSUpdate }
  use { 'nvim-treesitter/nvim-treesitter-context' }

use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
}

use { 'ThePrimeagen/harpoon' }

  use { 'NTBBloodbath/rest.nvim' }
  use { 'lewis6991/gitsigns.nvim' }
  use { 'ahmedkhalf/project.nvim' }
  use { 'numToStr/comment.nvim' }
  use { 'TimUntersberger/neogit' }
  use { 'Olical/conjure' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use { 'nvim-orgmode/orgmode' }
  use { 'folke/todo-comments.nvim' }
  use { 'akinsho/git-conflict.nvim' }
  use { 'leafOfTree/vim-svelte-plugin' }
  use { 'wuelnerdotexe/vim-astro' }
  use { 'ziglang/zig.vim' }

  -- Color schemes
  use { 'ghifarit53/daycula-vim' }
  use { 'joshdick/onedark.vim' }
  use { 'tek256/simple-dark' }
  use { 'rakr/vim-two-firewatch' }
  use { 'sts10/vim-pink-moon' }
  use { 'adigitoleo/vim-mellow' }
  use { 'savq/melange' }
  use { 'Mangeshrex/uwu.vim' }
  use { 'owickstrom/vim-colors-paramount' }
  use { 'relastle/bluewery.vim' }
  use { 'folke/tokyonight.nvim' }
  use { 'shaunsingh/oxocarbon.nvim', branch = 'fennel' }
  use { 'ofirgall/ofirkai.nvim' }
  use {
    'olivercederborg/poimandres.nvim',
    config = function()
      require('poimandres').setup {
        bold_vert_split = false, -- use bold vertical separators
      }
    end
  }

end)
