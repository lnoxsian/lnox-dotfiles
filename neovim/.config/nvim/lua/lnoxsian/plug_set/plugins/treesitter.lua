return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local treesitter = require("nvim-treesitter")
    treesitter.install({
      'json',
      'yaml',
      'markdown',
      'markdown_inline',
      'javascript', 
      'typescript',
      'tsx',
      'html',
      'css',
      'c',
      'zig',
      'go',
      'rust', 
      'python',
      'dockerfile',
      'vim',
      'lua'
    })
  end
}
