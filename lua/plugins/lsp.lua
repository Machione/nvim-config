return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",         -- Lua
                    "typos_lsp",      -- Spell checking
                    "bashls",         -- Bash
                    "unocss",         -- CSS
                    "html",           -- HTML
                    "jsonls",         -- JSON
                    "tsserver",       -- Java/Typescript
                    "texlab",         -- LaTeX
                    "marksman",       -- Markdown
                    "pylsp",          -- Python
                    "rust_analyzer",  -- Rust
                    "svelte",         -- Svelte
                    "yamlls"          -- YAML
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.typos_lsp.setup({})
            lspconfig.bashls.setup({})
            lspconfig.unocss.setup({})
            lspconfig.html.setup({})
            lspconfig.jsonls.setup({})
            lspconfig.tsserver.setup({})
            lspconfig.texlab.setup({})
            lspconfig.marksman.setup({})
            lspconfig.pylsp.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.svelte.setup({})
            lspconfig.yamlls.setup({})

            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}
