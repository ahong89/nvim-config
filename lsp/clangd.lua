return {
  cmd = { "clangd", "--compile-commands-dir=builds", "--background-index", "--clang-tidy" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_markers = { "compile_commands.json", ".git" },
  init_options = {
    clangdFileStatus = true,
    completeUnimported = true,
  },
}
