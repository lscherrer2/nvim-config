local map = vim.keymap.set

-- terminal
map("t", "<Esc>", "<C-\\><C-n>")
local function toggle_terminal()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
      vim.api.nvim_win_close(win, true)
      return
    end
  end
  vim.cmd("botright split")
  vim.cmd("resize " .. math.floor(vim.o.lines * 0.3))
  vim.cmd("terminal")
end
map("n", "<leader>tt", toggle_terminal, { noremap = true })
map("t", "<C-h>", [[<C-\><C-n><C-w>h]], { noremap = true })
map("t", "<C-j>", [[<C-\><C-n><C-w>j]], { noremap = true })
map("t", "<C-k>", [[<C-\><C-n><C-w>k]], { noremap = true })
map("t", "<C-l>", [[<C-\><C-n><C-w>l]], { noremap = true })
