-- lua/plugins/gruvbox.lua
return {
  "motaz-shokry/gruvbox.nvim",
  name = "gruvbox",
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      variant = "auto",        -- auto, hard, medium, soft, light
      dark_variant = "medium", -- hard, medium, soft
      dim_inactive_windows = true,
      extend_background_behind_borders = false,

      enable = {
        terminal = true,
        migrations = true,        -- Handle deprecated options automatically
        devicons = true,          -- Theming devicons with gruvbox
        lualine = true,
      },

      styles = {
        bold = true,
        italic = true,
        transparency = false,
      },

      groups = {
        -- UI Elements
        border = "gray",
        link = "purple_lite",
        panel = "bg_second",

        -- Diagnostic levels
        error = "red_lite",
        hint = "aqua_lite",
        info = "blue_lite",
        ok = "green_lite",
        warn = "yellow_lite",
        note = "yellow_dark",
        todo = "aqua_dark",

        -- Git states
        git_add = "green_dark",
        git_change = "yellow_dark",
        git_delete = "red_dark",
        git_dirty = "orange_dark",
        git_ignore = "gray",
        git_merge = "purple_dark",
        git_rename = "blue_dark",
        git_stage = "purple_dark",
        git_text = "yellow_lite",
        git_untracked = "bg2",

        -- Headings
        h1 = "red_dark",
        h2 = "yellow_dark",
        h3 = "green_dark",
        h4 = "aqua_dark",
        h5 = "blue_dark",
        h6 = "purple_dark",
      },

      palette = {
        },
        highlight_groups = {
        },

        before_highlight = function(group, highlight, palette)
        end,
      })

      vim.cmd("colorscheme gruvbox")
    end
  }
