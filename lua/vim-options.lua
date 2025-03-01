-- tab config
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- adds line numbers
vim.cmd("set number relativenumber")

-- prevents enter from making new comments
vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

-- stops swapfiles
vim.opt.swapfile = false
vim.opt.wrap = false

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
