require("config.options")
require("config.keymaps")
require("core.lazy")
vim.api.nvim_create_autocmd("FileType", {
  once = true,
  callback = function()
    require("core.lsp")
  end,
})
