return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("basedpyright", {})
            vim.lsp.enable("basedpyright")
        end,
    },
}
