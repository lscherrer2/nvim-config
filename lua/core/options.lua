local opt = vim.opt

-- General
opt.mouse = ""                    -- Enable mouse support
opt.clipboard = "unnamedplus"     -- Use system clipboard
opt.swapfile = false              -- Don't use swapfile
opt.backup = false                -- Don't use backup
opt.undofile = true               -- Persistent undo
opt.termguicolors = true          -- Enable true color support
opt.timeoutlen = 300              -- Faster mapping timeout

-- Line Numbers
opt.number = true                 -- Show line numbers
opt.relativenumber = true         -- Show relative line numbers
opt.cursorline = true             -- Highlight current line

-- Tabs & Indentation
opt.tabstop = 4                   -- Number of spaces per tab
opt.shiftwidth = 4                -- Number of spaces for indent
opt.softtabstop = 4               -- Number of spaces for tab key
opt.expandtab = true              -- Convert tabs to spaces
opt.smartindent = true            -- Smart autoindenting

-- Search
opt.ignorecase = true             -- Ignore case when searching
opt.smartcase = true              -- Override ignorecase if capital letter used
opt.incsearch = true              -- Show search matches as you type
opt.hlsearch = false              -- Don’t highlight all matches

-- Appearance
opt.wrap = false                  -- Don't wrap lines
opt.signcolumn = "yes"            -- Always show sign column
opt.scrolloff = 8                 -- Keep cursor away from edges
opt.sidescrolloff = 8

-- Split behavior
opt.splitright = true             -- Vertical splits to the right
opt.splitbelow = true             -- Horizontal splits below


