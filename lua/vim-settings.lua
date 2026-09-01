vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

vim.diagnostic.config({
  virtual_text = {
    spacing = 4,
    prefix = '●', 
  },
  severity_sort = true,
})


vim.g.mapleader = " "

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', {})

