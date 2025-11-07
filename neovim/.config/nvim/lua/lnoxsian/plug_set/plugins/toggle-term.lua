return {
  'akinsho/toggleterm.nvim',
  config = function ()
    require("toggleterm").setup()
    local keymap = vim.keymap
    keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Fuzzy find files in cwd" })
  end,
}
