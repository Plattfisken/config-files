return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "csharp_ls",
                    "clangd",
                    "rust_analyzer",
                    "gopls",
                    "html",
                    "cssls",
                    "tsserver",
                },
            })
        end,
    },
    {
        "simrat39/rust-tools.nvim",
        config = function()
            local rt = require("rust-tools")
            rt.setup({
                -- server = {
                --     on_attach = function(_, bufnr)
                --         -- Hover actions
                --         vim.keymap.set("n", "<K>", rt.hover_actions.hover_actions, { buffer = bufnr })
                --         -- Code action groups
                --         vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
                --     end,
                -- },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.csharp_ls.setup({
                capabilities = capabilities
            })
            lspconfig.clangd.setup({
                capabilities = capabilities
            })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities
            })
            lspconfig.gopls.setup({
                capabilities = capabilities
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.cssls.setup({
                capabilities = capabilities
            })
            lspconfig.tsserver.setup({
                capabilities = capabilities
            })

            local keymap = vim.keymap
            keymap.set("n", "K", vim.lsp.buf.hover, {})
            keymap.set("n", "gd", vim.lsp.buf.definition, {})
            keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
            keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
        end,
    },
}
