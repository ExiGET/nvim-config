return {
	-- dir = "C:/Users/micha/AppData/local/nvim/lua/plugins/mi1chawilliams_plugin",
	-- name = "mi1chawilliams_plugin",
	"m1chaelwilliams/ezdiagnostics",
	config = function()
		require("ezdiagnostics").setup({
			cmd = "<leader>ld",
		})
	end,
}
