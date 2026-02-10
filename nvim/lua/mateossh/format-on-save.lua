-- default: format on save
vim.g.format_on_save = true

-- one-shot skip flag (buffer-local)
-- vim.b._skip_format_once = true

local aug = vim.api.nvim_create_augroup("FormatOnSave", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
  group = aug,
  callback = function(args)
    if not vim.g.format_on_save then
      return
    end
    if vim.b[args.buf]._skip_format_once then
      vim.b[args.buf]._skip_format_once = nil
      return
    end

    -- format via LSP
    vim.lsp.buf.format({
      bufnr = args.buf,
      timeout_ms = 2000,
    })
  end,
})

-- Save once without formatting (still runs other autocmds)
vim.keymap.set("n", "<leader>W", function()
  vim.b._skip_format_once = true
  vim.cmd("write")
end, { desc = "Save (no format once)" })

-- Optional: toggle format-on-save globally
vim.api.nvim_create_user_command("FormatToggle", function()
  vim.g.format_on_save = not vim.g.format_on_save
  print("format_on_save = " .. tostring(vim.g.format_on_save))
end, {})
