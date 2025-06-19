return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  },
  config = function()
    -- Configure diagnostics
    vim.diagnostic.config({
      virtual_text = true,
      severity_sort = true,
      signs = true,
      underline = {
        severity = { min = vim.diagnostic.severity.HINT }
      },
      update_in_insert = false,
    })

    local cmp = require("cmp")
    local cmp_lsp = require("cmp_nvim_lsp")

    -- Setup nvim-cmp
    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
      }, {
        { name = "buffer" },
        { name = "path" },
      })
    })

    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "pyright",
        "rust_analyzer",
      },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({
            capabilities = cmp_lsp.default_capabilities()
          })
        end,
      }
    })

    -- ...existing code...
  end,
}
