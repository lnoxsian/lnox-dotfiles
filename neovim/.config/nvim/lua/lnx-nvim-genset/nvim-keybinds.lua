local builtin = require('telescope.builtin')

local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Fix * (Keep the cursor position, don't move to next match)
map('n', '*', '*N')

-- Quickly save the current buffer or all buffers
map('n', '<leader>w', '<CMD>update<CR>')
map('n', '<leader>W', '<CMD>wall<CR>')

-- Quit neovim
map('n', '<C-Q>', '<CMD>q<CR>')

-- leader-o/O inserts blank line below/above
map('n', '<leader>o', 'o<ESC>')
map('n', '<leader>O', 'O<ESC>')

-- Increment/decrement
map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

-- Jumplist
map("n", "<C-m>", "<C-i>", opts)

-- New tab
map("n", "te", ":tabedit<Return>")
map("n", "<tab>", ":tabnext<Return>", opts)
map("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)
-- Move window
map("n", "sh", "<C-w>h")
map("n", "sk", "<C-w>k")
map("n", "sj", "<C-w>j")
map("n", "sl", "<C-w>l")

-- Resize window
map("n", "<C-w><left>", "<C-w><")
map("n", "<C-w><right>", "<C-w>>")
map("n", "<C-w><up>", "<C-w>+")
map("n", "<C-w><down>", "<C-w>-")

-- Telescope keybinds
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- NvimTree for neovim
map('n', '<leader>n', ":NvimTreeToggle<CR>")
map('n', '<leader>f', ":NvimTreeFocus<CR>")

-- Toggle terminal config
map('n', '<leader>tt', ":ToggleTerm<CR>")

-- Clear search for neovim
map('n', '<leader>cs', ":noh<CR>")

-- Colorizer toggle for neovim
map('n', '<leader>c', ":ColorizerToggle<CR>")

-- Lazygit caller keybind
map('n', '<leader>g', ":LazyGit<CR>")
