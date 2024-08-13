return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Find Files" })
			vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Git Files" })
			vim.keymap.set("n", "<leader>pg", builtin.live_grep, { desc = "Live Grep" })
			vim.keymap.set("n", "<leader>pws", function()
				local word = vim.fn.expand("<cword>")
				builtin.grep_string({ search = word })
			end, { desc = "Current Word" })
			vim.keymap.set("n", "<leader>pWs", function()
				local word = vim.fn.expand("<cWORD>")
				builtin.grep_string({ search = word })
			end, { desc = "Selected Word" })
			vim.keymap.set("n", "<leader>ph", builtin.help_tags, { desc = "Help Tags" })
			vim.keymap.set("n", "<leader>pb", builtin.buffers, { desc = "File Buffers" })
			vim.keymap.set("n", "<leader>pd", builtin.diagnostics, { desc = "Diagnostics" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
