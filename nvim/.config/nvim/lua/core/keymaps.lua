local keymap = vim.keymap.set

keymap("n", "<leader>n", vim.cmd.Ex)

keymap("n", "j", "gj")
keymap("n", "k", "gk")

keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")

keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
