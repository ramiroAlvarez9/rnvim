vim.keymap.set('n', 'gl', function()
  vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
end, { desc = "Show line diagnostics" })
