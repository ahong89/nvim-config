vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })

-- Horizontal split with focus on the new window
vim.keymap.set('n', '<C-w>s', ':split<CR><C-w>j', { noremap = true, silent = true })

-- Vertical split with focus on the new window
vim.keymap.set('n', '<C-w>v', ':vsplit<CR><C-w>l', { noremap = true, silent = true })
