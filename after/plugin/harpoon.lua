local harpoon = require("harpoon")
local extensions = require("harpoon.extensions")
harpoon:setup({
  settings = {
    save_on_toggle = true
  }
})

harpoon:extend(extensions.builtins.navigate_with_number());
-- harpoon:extend({
--   UI_CREATE = function(cx)
--     vim.keymap.set("n", "<C-v>", function()
--       harpoon.ui:select_menu_item({ vsplit = true })
--     end, { buffer = cx.bufnr })
--     vim.keymap.set("n", "<C-t>", function()
--       harpoon.ui:select_menu_item({ tabedit = true })
--     end, { buffer = cx.bufnr })
--   end,
-- })

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>e", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- function Harpoon_files()
--     local contents = {}
--     local marks_length = harpoon:list():length()
--     local current_file_path = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":.")
--     for index = 1, marks_length do
--         local harpoon_file_path = harpoon:list():get(index).value
--         local file_name = harpoon_file_path == "" and "(empty)" or vim.fn.fnamemodify(harpoon_file_path, ':t')
-- 
--         if current_file_path == harpoon_file_path then
--             contents[index] = string.format("%%#HarpoonNumberActive# %s. %%#HarpoonActive#%s ", index, file_name)
--         else
--             contents[index] = string.format("%%#HarpoonNumberInactive# %s. %%#HarpoonInactive#%s ", index, file_name)
--         end
--     end
-- 
--     return table.concat(contents)
-- end
-- 
-- vim.opt.showtabline = 2
-- vim.api.nvim_create_autocmd({ "BufEnter", "BufAdd", "User" }, {
--     callback = function(ev)
--         vim.o.tabline = Harpoon_files()
--     end
-- })

-- Harpoon Telescope View
--
-- 
-- local harpoon = require('harpoon')
-- harpoon:setup({})
-- 
-- -- basic telescope configuration
-- local conf = require("telescope.config").values
-- local function toggle_telescope(harpoon_files)
--     local file_paths = {}
--     for _, item in ipairs(harpoon_files.items) do
--         table.insert(file_paths, item.value)
--     end
-- 
--     require("telescope.pickers").new({}, {
--         prompt_title = "Harpoon",
--         finder = require("telescope.finders").new_table({
--             results = file_paths,
--         }),
--         previewer = conf.file_previewer({}),
--         sorter = conf.generic_sorter({}),
--     }):find()
-- end
-- 
-- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
--     { desc = "Open harpoon window" })
