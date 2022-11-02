local keymap = vim.keymap.set

local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

keymap("i", "<C-c>", "<ESC>")
keymap("n", "Q", "<Nop>")
keymap("n", "q", "<Nop>")

-- Do not yank with x
keymap("n", "x", '"_x')

-- Increment/decrement
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

-- Select all
keymap("n", "<C-a>", "gg<S-v>G")

-- New tab and close tab
keymap("n", "te", ":tabedit")
keymap("n", "tc", ":tabclose")

-- Quit
keymap("n", "sq", ":q<CR>")

-- Split window
-- keymap("n", "ss", ":split<Return><C-w>w")
-- keymap("n", "sv", ":vsplit<Return><C-w>w")

keymap("n", "ss", ":split<Return>")
keymap("n", "sv", ":vsplit<Return>")

-- Move between windows
-- keymap("n", "<Space>", "<C-w>w")
keymap("", "sh", "<C-w>h")
keymap("", "sk", "<C-w>k")
keymap("", "sj", "<C-w>j")
keymap("", "sl", "<C-w>l")

-- Resize window
keymap("n", "<C-w><left>", "<C-w><")
keymap("n", "<C-w><right>", "<C-w>>")
keymap("n", "<C-w><up>", "<C-w>+")
keymap("n", "<C-w><down>", "<C-w>-")

-- Prettier format
keymap("n", "<leader>f", ":Prettier<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Prettier format
keymap("n", "<leader>f", ":Prettier<CR>", opts)

-- Close buffers
-- keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)
keymap("n", "<S-q>", "<cmd>:tabclose<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --
keymap("n", "<leader>re", "<Plug>RestNvim")
keymap("n", "<leader>rep", "<Plug>RestNvimPreview")
keymap("n", "<leader>rel", "<Plug>RestNvimLast")

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<Plug>(comment_toggle_linewise_current)", opts)
keymap("x", "<leader>/", "<Plug>(comment_toggle_linewise_visual)")

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)
