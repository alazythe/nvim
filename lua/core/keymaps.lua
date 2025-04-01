local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<Space>", "<Nop>", opts)

-- Tabs
map("n", "<localleader>tn", "<cmd>tabnew<cr>", { noremap = true, silent = true, desc = "New Tab" })
map("n", "<localleader>tc", "<cmd>tabclose<cr>", { noremap = true, silent = true, desc = "Close Tab" })
map("n", "<localleader>to", "<cmd>tabonly<cr>", { noremap = true, silent = true, desc = "Close Other Tabs" })
map("n", "<localleader>o", "<cmd>tabnext<cr>", { noremap = true, silent = true, desc = "Next Tab" })
map("n", "<localleader>p", "<cmd>tabprevious<cr>", { noremap = true, silent = true, desc = "Prev Tab" })

-- Telescope
map("n", "<localleader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<localleader>fg", "<cmd>Telescope live_grep<cr>", opts)

-- NvimTree
map("n", "<localleader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- Example: Lazy plugin manager
map("n", "<localleader>l", "<cmd>Lazy<cr>", opts)
