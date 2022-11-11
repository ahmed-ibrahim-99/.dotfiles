local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

----------------------------------------------------------------------
-- General Mappings
----------------------------------------------------------------------

-- escape insert mode
map("i", "jk", "<ESC>")

-- brackets
-- map("i", "{<cr>", "{<CR>}<Esc>ko<tab>")
-- map("i", "[<cr>", "[<CR>]<Esc>ko<tab>")
-- map("i", "(<cr>", "(<CR>)<Esc>ko<tab>")
-- map("i", "{<leader>", "{}<left>")
-- map("i", "[<leader>", "[]<left>")
-- map("i", "(<leader>", "()<left>")
-- map("i", "\"<leader>", "\"\"<left>")

-- search highlights
map("n", "<leader>nh", ":nohl<CR>")

-- windows
map("n", "<leader>sv", "<C-w>v")
map("n", "<leader>sh", "<C-w>s")
map("n", "<leader>se", "<C-w>=")
map("n", "<leader>sx", ":close<CR>")
map("n", "<leader>j", "<C-w>j")
map("n", "<leader>k", "<C-w>k")
map("n", "<leader>h", "<C-w>h")
map("n", "<leader>l", "<C-w>l")
map("n", "_", "<C-w>-")
map("n", "+", "<C-w>+")

-- taps
map("n", "to", ":tabnew<CR>")
map("n", "tx", ":tabclose<CR>")
map("n", "tl", ":tabn<CR>")
map("n", "th", ":tabp<CR>")

----------------------------------------------------------------------
-- Plugins Mappings
----------------------------------------------------------------------
map("n", "<leader>sm", ":MaximizerToggle<CR>")
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
map("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
