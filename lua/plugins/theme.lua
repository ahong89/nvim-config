return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        background = {
          light = "latte",
          dark = "macchiato",
        },
        transparent_background = true
      })
      -- vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    "arcticicestudio/nord-vim",
    name = "nord",
    config = function()
      -- vim.cmd.colorscheme "nord"
    end
  },
  {
    "olimorris/onedarkpro.nvim",
    config = function()
      vim.cmd.colorscheme "onedark"
      local appearance = require("utils.appearance")
      appearance.make_transparent()
    end
  },
  {
    "junegunn/seoul256.vim",
    config = function()
      -- vim.g.seoul256_background = 233
      -- vim.cmd.colorscheme "seoul256"
      -- local appearance = require("utils.appearance")
      -- appearance.make_transparent()
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          theme = 'onedark'
        }
      })
    end
  },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup({
        transparent = true,
      })
      -- vim.cmd.colorscheme "kanagawa"
      -- local appearance = require("utils.appearance")
      -- appearance.make_transparent()
      -- vim.api.nvim_set_hl(0, "LineNr", { fg = "#686887", bold = false })
      -- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#686887", bold = true })
    end
  }
}
