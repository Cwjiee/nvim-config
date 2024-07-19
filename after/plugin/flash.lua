vim.keymap.set({ "n", "x", "o"}, "s", function() require("flash").jump() end)
vim.keymap.set({ "o", "x" }, "<C-f>", function() require("flash").treesitter_search() end)

