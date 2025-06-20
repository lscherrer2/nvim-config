return {
  "sindrets/winshift.nvim",
  config = function()
    require("winshift").setup()
    vim.keymap.set("n", "<leader>wm", "<cmd>WinShift<CR>", { desc = "WinShift Mode" })
    vim.keymap.set("n", "<leader>wh", "<cmd>WinShift left<CR>", { desc = "Move window left" })
    vim.keymap.set("n", "<leader>wl", "<cmd>WinShift right<CR>", { desc = "Move window right" })
    vim.keymap.set("n", "<leader>wj", "<cmd>WinShift down<CR>", { desc = "Move window down" })
    vim.keymap.set("n", "<leader>wk", "<cmd>WinShift up<CR>", { desc = "Move window up" })
    vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Vertical Split" })
    vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Horizontal Split" })
    vim.keymap.set("n", "<leader>se", ":enew<CR>", { desc = "New Empty Buffer" })
 end,
}
