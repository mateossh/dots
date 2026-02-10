require("mateossh")

vim.cmd([[
  com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
]])

vim.g.do_filetype_lua = 1

vim.g.vim_svelte_plugin_use_sass = 1
vim.g.vim_svelte_plugin_use_typescript = 1
