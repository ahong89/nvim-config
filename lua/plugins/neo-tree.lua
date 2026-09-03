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
      default_component_configs = {
        file_size = { enabled = false },
        type = { enabled = false },
        last_modified = { enabled = false },
      },
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
      window = {
        position = "right",
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          local ft = vim.api.nvim_get_option_value("filetype", { buf = 0 })
          if ft == "neo-tree" then
            vim.cmd("Neotree close")
          else
            vim.cmd("Neotree focus")
          end
        end,
        desc = "Toggle Neo-tree",
      },
    },
  }
}
