return {
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
      local npairs = require("nvim-autopairs")
      npairs.setup({
        check_ts = true,
        ts_config = {},
        disable_filetype = { "racket" }
      })
    end
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  {
    'windwp/nvim-ts-autotag',
    config = function()
      local autotag = require("nvim-ts-autotag")
      autotag.setup({
        opts = {}
      })
    end
  }
}
