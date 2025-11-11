return {
  cmd = { 'pyrefly', 'lsp' },
  filetypes = { 'python' },
  root_dir = vim.fs.dirname(vim.fs.find({ '.git', 'pyrefly.toml' }, { upward = true })[1]),
}
