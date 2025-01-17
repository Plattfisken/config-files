-- for formatting
return {
    "stevearc/conform.nvim",
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                c = { "clang-format" }
            },
        })
        vim.keymap.set({ "n", "v" }, "<leader>l", function()
            require("conform").format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end
        )
    end
}
