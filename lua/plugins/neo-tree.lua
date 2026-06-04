return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.opt_local.number = true
            vim.opt_local.relativenumber = true
          end,
        },
      },
      filesystem = {
        hijack_netrw_behavior = "disabled",
        filtered_items = {
          visible = true,        -- show hidden files (dimmed)
          hide_dotfiles = false, -- don't hide dotfiles
          hide_gitignored = false, -- optional: also show gitignored files
        },
      },
    },
    keys = {
      { "<leader>e", "<cmd>Neotree focus<cr>", desc = "Toggle Neo-tree" },
    },
  }
}
