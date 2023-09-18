vim.g.mapleader = " "
-- Go to explorer window
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
-- Save file
vim.keymap.set("n", "<C-s>", vim.cmd.w)
-- Close buffer/file
vim.keymap.set("n", "<leader>q", vim.cmd.q)

-- Improve navigations in neovim windows with ctrl + neovim navigation keys
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Tab navigation remaps
vim.keymap.set("n", "<leader>to", ":$tabnew<CR>")
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>")
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")
-- move current tab to previous position
vim.keymap.set("n", "<leader>tmp", ":-tabmove<CR>")
-- move current tab to next position
vim.keymap.set("n", "<leader>tmn", ":+tabmove<CR>")

-- Move visually selected chunks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center cursor when moving
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Yank to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Rename word cursor is in throughout file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
