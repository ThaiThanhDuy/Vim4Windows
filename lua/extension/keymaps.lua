-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--   alt     = "A"
--   shift   = "S"
--   control = "C"
--   arrows  = "Up" "Down" "Left" "Right"
--   leader  = "\"


-- Vim editor
-- Shortcut
keymap("n","<C-s>",":w<CR>",opts) -- save file

-- Tab
keymap("n","<C-t>",":tabnew<CR>",opts)
keymap("n","<C-n>",":tabnext<CR>",opts)

--Tree
keymap("n","<C-e>",":Explore<CR>",opts)

-- Comment
keymap("n", "<C-/>", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)

-- NvimTree
keymap("n", "<A-o>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<A-e>", ":NvimTreeClose<CR>", opts)

