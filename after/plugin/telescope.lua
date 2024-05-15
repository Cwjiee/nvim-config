require('telescope').setup{
  defaults = {
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        height = 0.5,
        width = 0.8,
        prompt_position = 'top',
        preview_width = 0.60,

      },
    }
  },
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
