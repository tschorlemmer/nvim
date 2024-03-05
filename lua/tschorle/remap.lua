vim.g.mapleader = " "
vim.keymap.set("n", "<leader>d", vim.cmd.Ex)
vim.keymap.set("i", "jj", "<Esc>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>j", "o<Esc>")
vim.keymap.set("n", "<leader>k", "O<Esc>")

vim.keymap.set("t", "jj", "<C-\\><C-n>")

vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>a")


vim.keymap.set("n", "<C-J>", "<C-w>j")
vim.keymap.set("n", "<C-K>", "<C-w>k")
vim.keymap.set("n", "<C-H>", "<C-w>h")
vim.keymap.set("n", "<C-L>", "<C-w>l")


vim.keymap.set("n", "<leader>tq", ":tabclose<CR>")
vim.keymap.set("n", "<leader>to", ":tabonly<CR>")
vim.keymap.set("n", "<leader>tm", ":tabmove<Space>")
vim.keymap.set("n", "<leader>1", ":tabnext 1<CR>")
vim.keymap.set("n", "<leader>2", ":tabnext 2<CR>")
vim.keymap.set("n", "<leader>3", ":tabnext 3<CR>")
vim.keymap.set("n", "<leader>4", ":tabnext 4<CR>")
vim.keymap.set("n", "<leader>5", ":tabnext 5<CR>")
vim.keymap.set("n", "<leader>6", ":tabnext 6<CR>")
vim.keymap.set("n", "<leader>7", ":tabnext 7<CR>")
vim.keymap.set("n", "<leader>8", ":tabnext 8<CR>")
vim.keymap.set("n", "<leader>9", ":tabnext 9<CR>")
vim.keymap.set("n", "<leader>th", ":tabprev<CR>")
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>")
vim.keymap.set("n", "<leader>tt", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tp", "<C-Tab>")


