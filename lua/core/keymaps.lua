local map = vim.keymap.set

-- global configuration
vim.g.mapleader = " "

-- neotree keybinds
map("n", "<leader>-", ":Neotree toggle left<CR>", { noremap = true, silent = true })

-- terminal keymaps
map("n", "<leader>tt", ":belowright 15split | terminal<CR>", { noremap = true })
map("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })
map("t", "<C-h>", [[<C-\><C-n><C-w>h]], { noremap = true })
map("t", "<C-j>", [[<C-\><C-n><C-w>j]], { noremap = true })
map("t", "<C-k>", [[<C-\><C-n><C-w>k]], { noremap = true })
map("t", "<C-l>", [[<C-\><C-n><C-w>l]], { noremap = true })

-- window navigation keymaps
map("n", "<C-h>", "<C-w>h", { noremap = true })
map("n", "<C-j>", "<C-w>j", { noremap = true })
map("n", "<C-k>", "<C-w>k", { noremap = true })
map("n", "<C-l>", "<C-w>l", { noremap = true })

