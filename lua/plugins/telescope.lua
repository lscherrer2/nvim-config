return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").setup({})
            vim.api.nvim_set_keymap('n', '<leader>pf', '<cmd>Telescope find_files<cr>', { noremap=true, silent=true })
            vim.api.nvim_set_keymap('n', '<leader>ps', '<cmd>Telescope live_grep<cr>', { noremap=true, silent=true })
        end,
    }
}
