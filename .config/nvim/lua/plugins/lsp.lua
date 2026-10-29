return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",
                    "rust_analyzer",
                    "basedpyright",
                },
            })

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(event)
                    local opts = { buffer = event.buf }

                    vim.keymap.set("n", "gd",
                        vim.lsp.buf.definition, opts)
                    vim.keymap.set("n", "gr",
                        vim.lsp.buf.references, opts)
                    vim.keymap.set("n", "K",
                        vim.lsp.buf.hover, opts)
                    vim.keymap.set("n", "<leader>rn",
                        vim.lsp.buf.rename, opts)
                    vim.keymap.set("n", "<leader>ca",
                        vim.lsp.buf.code_action, opts)
                end,
            })
        end,
    },
}
