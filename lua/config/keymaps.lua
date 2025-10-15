vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })

-- Split with focus on new window
vim.keymap.set('n', '<C-w>s', ':split<CR><C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-w>v', ':vsplit<CR><C-w>l', { noremap = true, silent = true })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })
