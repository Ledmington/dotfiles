return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("clangd", {
                cmd = { "clangd" },
            })

            vim.lsp.enable("clangd")
        end,
    },
}
