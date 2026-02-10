vim.api.nvim_create_user_command("ToggleWordWrap", function()
  vim.wo.wrap = not vim.wo.wrap
end, { desc = "Toggle word wrap" })
