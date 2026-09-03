return {
  {
    'nvim-telescope/telescope.nvim',
    branch = 'master',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
    keys = {
      { '<C-p>', function() require("telescope.builtin").find_files() end },
      { '<leader>g', function() require("telescope.builtin").live_grep() end },
    },
    config = function()
      require('telescope').setup {
        defaults = {
          -- don't score/scan build artifacts, git internals, or Brazil env dirs
          file_ignore_patterns = { "%.git/", "/build/", "/env/", "%.class$" },
        },
        pickers = {
          find_files = {
            hidden = true,
            -- exclude heavy dirs at the finder level so fd never enumerates them
            find_command = {
              "fd", "--type", "f", "--color", "never", "--hidden",
              "--exclude", ".git", "--exclude", "build", "--exclude", "env",
            },
          },
          color_scheme = {
            enable_preview = true
          }
        },
      }
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    lazy = true,
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
