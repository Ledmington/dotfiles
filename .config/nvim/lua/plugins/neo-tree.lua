return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        opts = {
            close_if_last_window = false,
            filesystem = {
                follow_current_file = {
                    enabled = true,
                },
                use_libuv_file_watcher = true,
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
            },
            window = {
                width = 30,
                mappings = {
                    ["<space>"] = "none",
                },
            },
        },
        keys = {
            {
                "<leader>e",
                "<cmd>Neotree toggle reveal_force_cwd<CR>",
                desc = "Toggle file explorer",
            },
        },
    },
}
