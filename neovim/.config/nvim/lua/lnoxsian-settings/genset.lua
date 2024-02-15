local o = vim.o -- local var for vim.o

-- colorscheme for neovim
vim.cmd.colorscheme("rose-pine")

-- Terminal and gui settings
o.termguicolors = true
o.background = 'dark'

-- Decreases the timeout for neovim
o.timeoutlen = 500
o.updatetime = 200

-- Screen lines above or below the cursor
o.scrolloff = 5

-- Editor ui settings
o.number = true
o.numberwidth = 3
o.relativenumber = true
o.signcolumn = 'no'
o.cursorline = false

-- Better editor settings
o.expandtab = true
o.smarttab = true
o.cindent = true
o.autoindent = true
o.wrap = true
o.textwidth = 300
o.shiftwidth = 0
o.tabstop = 2
o.softtabstop = -1
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- Better clipboard
o.clipboard = 'unnamedplus'

-- Case for some searching 
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = false
o.swapfile = false

-- History settings
o.history = 50

-- Better buffer managment
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
o.jumpoptions = 'view'

-- Stable buffer content on window open/close events
o.splitkeep = 'screen'

-- Imporove diff
vim.opt.diffopt:append('linematch:61')

-- Smooth scrolling
o.smoothscroll = true
