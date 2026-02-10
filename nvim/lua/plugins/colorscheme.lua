return {

  'ghifarit53/daycula-vim',
  'joshdick/onedark.vim',
  'tek256/simple-dark',
  'rakr/vim-two-firewatch',
  'sts10/vim-pink-moon',
  'adigitoleo/vim-mellow',
  'savq/melange',
  'owickstrom/vim-colors-paramount',
  'folke/tokyonight.nvim',
  'shaunsingh/oxocarbon.nvim',

  {
    'datsfilipe/vesper.nvim',

    -- config = function()
    --   vim.cmd.colorscheme('vesper')
    -- end,
  },

  {
    'ofirgall/ofirkai.nvim',
  },

  'Everblush/everblush.vim',
  {
    'kvrohit/rasmus.nvim',

    config = function()
      -- vim.g.rasmus_variant 'dark'
    end,
  },

  {
    'olivercederborg/poimandres.nvim',

    config = function()
      require('poimandres').setup({
        bold_vert_split = false, -- use bold vertical separators
      })
      vim.cmd.colorscheme('poimandres')
    end,

    priority = 1000,
  }
}
