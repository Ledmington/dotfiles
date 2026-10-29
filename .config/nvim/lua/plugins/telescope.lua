return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            defaults = {
                layout_strategy = "horizontal",
                sorting_strategy = "ascending",
                layout_config = {
                    prompt_position = "top",
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
        },
        keys = {
            {
                "<leader>ff",
                "<cmd>Telescope find_files<CR>",
                desc = "Find files",
            },
            {
                "<leader>fg",
                "<cmd>Telescope live_grep<CR>",
                desc = "Search text in files",
            },
            {
                "<leader>fb",
                "<cmd>Telescope buffers<CR>",
                desc = "Find open buffers",
            },
            {
                "<leader>fh",
                "<cmd>Telescope help_tags<CR>",
                desc = "Search help tags",
            },
        },
    },
}
