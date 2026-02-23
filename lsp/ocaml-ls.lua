return {
  cmd = { 'ocamllsp' },
  filetypes = { 'ocaml' },
  root_dir = vim.fs.dirname(vim.fs.find({ '.git' }, { upward = true })[1]),
}
