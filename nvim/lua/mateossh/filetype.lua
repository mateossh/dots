vim.filetype.add({
  extension = {
    astro = "astro",
    mdx = "markdown",
  },
  pattern = {
    ['.*'] = {
      -- Check first 25 lines of the file for 'dt-bindings/zmk'
      priority = -math.huge,
      function(path, bufnr)
        local content = vim.filetype.getlines(bufnr, 1, 25)

        for _, line in ipairs(content) do
          if vim.filetype.matchregex(line, [[\<dt-bindings\/zmk\>]]) then
            return 'dts'
          end
        end
      end,
    },
  },
})
