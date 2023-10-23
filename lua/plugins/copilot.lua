return { -- better text objects
{
    "danymat/neogen",
    keys = {{
        "<leader>cc",
        function()
            require("neogen").generate({})
        end,
        desc = "Neogen Comment"
    }},
    opts = {
        snippet_engine = "luasnip"
    }
}, {
    "ThePrimeagen/refactoring.nvim",
    keys = {{
        "<leader>r",
        function()
            require("refactoring").select_refactor()
        end,
        mode = "v",
        noremap = true,
        silent = true,
        expr = false
    }},
    opts = {}
}, {
    "zbirenbaum/copilot.lua",
    enabled = not vim.g.vscode,
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
        suggestion = {
            enabled = false
        },
        panel = {
            enabled = false
        }
    }
}, {
    "nvim-cmp",
    dependencies = {"hrsh7th/cmp-emoji", {
        "zbirenbaum/copilot-cmp",
        opts = {}
    }}
}}
