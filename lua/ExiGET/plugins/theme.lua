return {	
	"rose-pine/neovim", name = "rose-pine", 
	lazy = false,
	priority = 1000,
	opts = {
		disable_background = true,  -- This should make the background transparent
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	},
	config = function(_, opts)
		require("rose-pine").setup(opts)  -- Pass opts to the setup function
		vim.cmd("colorscheme rose-pine")
	end,
}
