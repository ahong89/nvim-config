-- tab config
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- adds line numbers
vim.cmd("set number")

-- prevents enter from making new comments
vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')

-- stops swapfiles
vim.opt.swapfile = false
vim.opt.wrap = false
