-- plugins/autopairs.lua
return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true, -- enable treesitter integration
      })
    end,
  },
}
