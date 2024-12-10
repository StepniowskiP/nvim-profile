local K = vim.keymap


-- use jk to exit insert mode
K.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
K.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
K.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
K.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
K.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
K.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
K.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
K.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tabs management
K.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
K.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
K.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
K.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
K.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- nvim-tree
K.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
K.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
K.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
K.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

-- telescope
K.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
K.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
K.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
K.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
K.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

-- session manager
K.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
K.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
