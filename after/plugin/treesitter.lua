local status, ts = pcall(require, 'nvim-treesitter')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'ruby',
    'go',
    'javascript',
    'tsx',
    'json',
    'css',
    'svelte',
  },
  autotag = {
    enable = true
  }
}
