-- global configuration
vim.g.mapleader = " "

-- neotree keybinds
vim.keymap.set("n", "<leader>-", ":Neotree toggle left<CR>", { noremap = true, silent = true })

-- terminal keymaps
vim.api.nvim_set_keymap("n", "<leader>tt", ":belowright 15split | terminal<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })
vim.api.nvim_set_keymap("t", "<C-h>", [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-j>", [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-k>", [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-l>", [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })

-- lsp keymaps
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "K", vim.lsp.buf.hover, opts)
map("n", "<leader>rn", vim.lsp.buf.rename, opts)
map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
map("n", "<leader>e", vim.diagnostic.open_float)        -- Show error message under cursor
map("n", "[d", vim.diagnostic.goto_prev)               -- Jump to previous diagnostic
map("n", "]d", vim.diagnostic.goto_next)               -- Jump to next diagnostic
map("n", "<leader>q", vim.diagnostic.setloclist)       -- Put all diagnostics in loclist
map("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, opts)  -- Format

