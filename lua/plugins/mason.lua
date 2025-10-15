return {
  "williamboman/mason.nvim", -- manage installation of lsps
  config = function()
    require("mason").setup()
  end
}
