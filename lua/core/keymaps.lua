local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<Space>", "<Nop>", opts)

-- Example: Telescope
map("n", "<localleader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<localleader>fg", "<cmd>Telescope live_grep<cr>", opts)

-- Example: NvimTree
map("n", "<localleader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- Example: Lazy plugin manager
map("n", "<localleader>l", "<cmd>Lazy<cr>", opts)
