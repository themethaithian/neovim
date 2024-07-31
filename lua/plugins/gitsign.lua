return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup()

		vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Git Preview Hunk" })
		vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Git Toggle Line Blame" })
		vim.keymap.set("n", "<leader>gd", ":Gitsigns diffthis<CR>", { desc = "Git Diff File" })
	end,
}
