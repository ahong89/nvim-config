vim.lsp.enable({
  'lua-ls',
  'ts-ls',
  'clangd',
  'pyrefly',
  'ocaml-ls',
})

vim.diagnostic.config({
  signs = false,
  virtual_text = true,
})

vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
vim.keymap.set('n', '<leader>f', function()
  vim.lsp.buf.format()
end)
