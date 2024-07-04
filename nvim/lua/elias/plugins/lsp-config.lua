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
                    "omnisharp",
                    "clangd",
                    "html",
                    "cssls",
                    "tsserver"
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.omnisharp.setup({
                capabilities = capabilities
            })
            lspconfig.clangd.setup({
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