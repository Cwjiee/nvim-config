vim.keymap.set("n", "f", function() require("flash").jump() end)
vim.keymap.set("c", "<C-s>", function() require("flash").toggle() end)
vim.keymap.set({ "o", "x" }, "<C-f>", function() require("flash").treesitter_search() end)

