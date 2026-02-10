local zmk_dt_bindings_re = vim.regex([[\<dt-bindings\/zmk\>]])

vim.filetype.add({
	extension = {
		astro = "astro",
		mdx = "markdown",
	},
	pattern = {
		[".*"] = {
			function(_path, bufnr)
				-- Check first 25 lines of the file for 'dt-bindings/zmk'
				local lines = vim.api.nvim_buf_get_lines(bufnr, 0, 25, false)
				for _, line in ipairs(lines) do
					if zmk_dt_bindings_re:match_str(line) ~= nil then
						return "dts"
					end
				end
			end,
			{ priority = -math.huge },
		},
	},
})
