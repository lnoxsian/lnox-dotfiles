local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- colorschemes for neovim
    {
        'rose-pine/neovim',
        'ellisonleao/gruvbox.nvim',
        'EdenEast/nightfox.nvim',
    },

    -- single apps no depends
    {
        'norcalli/nvim-colorizer.lua',
        'nvim-treesitter/nvim-treesitter',
        'kylechui/nvim-surround',
        'windwp/nvim-autopairs',
        'akinsho/toggleterm.nvim',
        'HiPhish/rainbow-delimiters.nvim', 
        'nosduco/remote-sshfs.nvim',
        'kdheepak/lazygit.nvim',
    },

    -- apps with depends
    {
        { 'echasnovski/mini.nvim', version = '*' },

        { 'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        {'folke/tokyonight.nvim'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
    },
},
})
