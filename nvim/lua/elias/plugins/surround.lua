return {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
}

-- ys{motion}{char} add surrounding characters: hello -> ysw) -> (hello)
-- ds{char} delete surrounding characters: "hello" -> ds" -> hello
-- cs{target}{replacement} change surrounding characters: {hello} -> cs}] -> [hello]
