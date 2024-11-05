return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup({
        size = 10,
        shading_factor = 2,
        direction = "float",
        float_opts = {
            border = "curved",
            highlights = {
                border = "Normal",
                background = "Normal",
            },
        },
    }) 
	
	vim.keymap.set("n", "<leader>c", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })

  end,
}