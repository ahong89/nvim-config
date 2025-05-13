-- tab config
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.smartindent = false

-- adds line numbers
vim.cmd("set number relativenumber")

-- prevents enter from making new comments
vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

-- stops excess files
vim.opt.swapfile = false
vim.opt.wrap = false
vim.opt.viminfofile = "NONE"

-- clipboard
vim.g.clipboard = {
  name = "WslClipboard",
  copy = {
    ["+"] = "/mnt/c/Windows/System32/clip.exe",
    ["*"] = "/mnt/c/Windows/System32/clip.exe",
  },
  paste = {
    ["+"] = "/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -command 'Get-Clipboard'",
    ["*"] = "/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -command 'Get-Clipboard'",
  },
  cache_enabled = 0,
}

vim.opt.mouse = "a"
