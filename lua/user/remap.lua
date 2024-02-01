vim.g.mapleader = " "

-- My Remaps
vim.keymap.set("n", "<leader>w", vim.cmd.w) -- save remap
vim.keymap.set("n", "<leader>p", [["+p]]) -- pastes system clipboard after cursor
vim.keymap.set("n", "<leader>P", [["+P]]) -- pastes system clipboard before cursor

vim.keymap.set("n", "<tab>", vim.cmd.bnext) -- next file in buffer
vim.keymap.set("n", "<S-tab>", vim.cmd.bprev) -- previous file in buffer
vim.keymap.set("n", "<leader>x", vim.cmd.bd) -- close current file in buffer

vim.keymap.set("n", "<C-l>", "<C-w><right>")
vim.keymap.set("n", "<C-h>", "<C-w><left>")


-- ThePrimeagen's Remaps

-- allows moving selected section up or down in code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append line below to current, and keep cursor at start
vim.keymap.set("n", "J", "mzJ`z") 

-- move up and down and keep cursor in center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- when searching for a term, keeps cursor in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when pasting, it keeps original yank content
vim.keymap.set("x", "<leader>dp", [["_dP]]) 

-- easy copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- deletes without yanking
vim.keymap.set({"n", "v"}, "<leader>dd", [["_d]])

-- easy escape (to use if esc and capslock keys not swapped)
vim.keymap.set("i", "<C-c>", "<Esc>")

-- search and replace globally the word the cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

