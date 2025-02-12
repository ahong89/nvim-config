return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			background = {
				light = "latte",
				dark = "macchiato",
			},
			transparent_background = false
		})
		vim.cmd.colorscheme "catppuccin"
	end
}
