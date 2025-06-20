return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Telescope Find Files" },
    { "<leader>pg", "<cmd>Telescope live_grep<cr>", desc = "Telescope Live Grep" },
  },
  config = function()
    require("telescope").setup{}
  end,
}
