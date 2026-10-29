return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("rust_analyzer", {})
            vim.lsp.enable("rust_analyzer")
        end,
    },
}
