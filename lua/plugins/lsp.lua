return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()

        -- dependencies
        require("mason").setup()
        require("mason-lspconfig").setup()

        local lspconfig = require("lspconfig")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local servers = { "pyright", "clangd" }
        for _, server in ipairs(servers) do
            lspconfig[server].setup({
                capabilities = capabilities,
            })
        end

        -- keybinds
        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(ev)
                local opts = { buffer = ev.buf }
                local map = vim.keymap.set

                -- keybinds for lsp features
                map("n", "gd", vim.lsp.buf.definition, opts)
                map("n", "K", vim.lsp.buf.hover, opts)
                map("n", "<leader>rn", vim.lsp.buf.rename, opts)
                map("n", "<leader>ca", vim.lsp.buf.code_action, opts)

                -- lsp-specific keybinds for errors
                map("n", "<leader>e", vim.diagnostic.open_float)        -- Show error message under cursor
                map("n", "[d", vim.diagnostic.goto_prev)               -- Jump to previous diagnostic
                map("n", "]d", vim.diagnostic.goto_next)               -- Jump to next diagnostic
                map("n", "<leader>q", vim.diagnostic.setloclist)       -- Put all diagnostics in loclist

                map("n", "<leader>f", function() vim.lsp.buf.format { async = true } end, opts)  -- Format

            end,

        })
    end
}
