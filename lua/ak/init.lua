require("ak.set")
require("ak.remap")

require("autoclose").setup()



-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = false

-- empty setup using defaults
require("nvim-tree").setup()
vim.keymap.set({'n', 'x', 'o'}, '<leader>s', '<Plug>(leap-forward)')
vim.keymap.set({'n', 'x', 'o'}, '<leader>S', '<Plug>(leap-backward)')

--require('leap').create_default_mappings()

-- OR setup with some options
--require("nvim-tree").setup({
  --sort = {
    --sorter = "case_sensitive",
  --},
  --view = {
    --width = 30,
  --},
  --renderer = {
    --group_empty = true,
  --},
  --filters = {
    --dotfiles = true,
  --},
--})

