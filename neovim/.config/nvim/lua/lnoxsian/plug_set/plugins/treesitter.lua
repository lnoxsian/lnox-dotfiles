return {
  'nvim-treesitter/nvim-treesitter',
  lazy = true,
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
