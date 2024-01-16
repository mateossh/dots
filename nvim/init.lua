local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('mateossh.set');
require('mateossh.keymaps')
require('mateossh.filetype')
require('mateossh.autocmd')

require('lazy').setup('mateossh.lazy')

vim.cmd.colorscheme 'rasmus'

vim.cmd [[
  com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
]]


vim.g.do_filetype_lua = 1


vim.g.vim_svelte_plugin_use_sass = 1
vim.g.vim_svelte_plugin_use_typescript = 1
