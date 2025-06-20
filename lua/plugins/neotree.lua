return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false,
    ---@module "neo-tree"
    ---@type neotree.Config?
    opts = {
        window = { width = 30 },
        filesystem = {
            filtered_items = {
                visible = true,         -- Show filtered (normally hidden) items
                hide_dotfiles = false,  -- Show dotfiles
                hide_gitignored = false,-- Show .gitignored files
                hide_by_name = {},      -- Don't hide anything by name
                hide_by_pattern = {},   -- Don't hide anything by pattern
            }
        }
    }
}
