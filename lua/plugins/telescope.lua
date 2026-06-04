return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = "Telescope",
    keys = {
      { '<C-p>', function() require("telescope.builtin").find_files() end },
      { '<leader>g', function() require("telescope.builtin").live_grep() end },
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            hidden = true
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
