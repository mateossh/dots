local util = require 'lspconfig'.util

-- Mappings.
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<space><space>', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)

  -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wl', function()
  --   print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, bufopts)
  -- vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- inspiration: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- TODO !!!
-- local function get_typescript_server_path()
--   vim.api.nvim_command()
-- end

local lsp_flags = {
  debounce_text_changes = 150,
}

require('lspconfig')['pyright'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['prismals'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

-- https://github.com/ngtinsmith/dotfiles/blob/b78bf3115d746d037c814ce6767b4c6ba38021c5/.vimrc#L558
require('lspconfig')['vuels'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
  settings = {
    vue = {
      completion = {
        autoImport = true,
        useScaffoldSnippets = true
      },
      format = {
        defaultFormatter = {
          html = "none",
          js = "prettier",
          ts = "prettier",
        }
      },
      validation = {
        template = true,
        script = true,
        style = true,
        templateProps = true,
        interpolation = true
      },
      experimental = {
        templateInterpolationService = true
      }
    }
  },
}
require('lspconfig')['rust_analyzer'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}
require('lspconfig')['gopls'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}
require('lspconfig')['tailwindcss'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}
require('lspconfig')['tsserver'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

--  Settings from: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua
require('lspconfig')['sumneko_lua'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
  root_dir = util.root_pattern("init.lua", ".luarc.json", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", ".git"),
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}


require('lspconfig')['svelte'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}

require('lspconfig')['astro'].setup{
  on_attach = on_attach,
  flags = lsp_flags,
}
-- nvim_lsp.volar.setup{
--   init_options = {
--     typescript = {
--       serverPath = '/Users/matt/.nvm/versions/node/v17.4.0/lib/node_modules/typescript/lib/tsserverlibrary.js'
--     }
--   },
--   cmd = { "vue-language-server", "--stdio" },
--   on_attach = on_attach,
-- }
