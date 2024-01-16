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
    'ofirgall/ofirkai.nvim',
  },

  'Everblush/everblush.vim',
  'kvrohit/rasmus.nvim',

  {
    'olivercederborg/poimandres.nvim',

    config = function()
      require('poimandres').setup({
        bold_vert_split = false, -- use bold vertical separators
      })
    end,

    lazy = true,
    priority = 1000,
  }
}
