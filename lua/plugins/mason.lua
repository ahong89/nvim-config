return {
  "williamboman/mason.nvim", -- manage installation of lsps
  cmd = { "Mason", "MasonInstall", "MasonUpdate" },
  config = function()
    require("mason").setup()
  end
}
