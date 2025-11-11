return {
  cmd = { 'typescript-language-server', '--stdio' },
  init_options = {
    preferences = {
      disableSuggestions = false
    }
  },
  filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
  root_markers = { 'package.json', 'tsconfig.json', '.git' },
}
