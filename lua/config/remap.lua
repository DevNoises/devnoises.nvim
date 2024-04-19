-- General
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap("t", "<ESC>", "<C-\\><C-n>", {noremap = true} )
vim.api.nvim_set_keymap("n", "<leader>w", "<C-w>", {noremap = true} )
vim.api.nvim_set_keymap("n", "\\", ":noh<return>", {noremap = true} )

-- Telescope.nvim
vim.keymap.set("n", "<leader>pf", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>pg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>pb", ":Telescope buffers<CR>")

-- indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Comment.nvim
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false }) -- <C-_> is actually for ctrl - forwardslash
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

-- LSP
vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition) -- go to definition
vim.keymap.set("n", "<leader>D", vim.lsp.buf.hover)  -- show info of object 
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)  -- renames all things with that name. 
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)  -- Perform fix suggested 
-- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references)  -- show where else it is used 
-- vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition)  -- like go to definition but for structures

-- trouble
vim.keymap.set("n", "<leader>t", ":TroubleToggle document_diagnostics<Enter>", {noremap = true} )
