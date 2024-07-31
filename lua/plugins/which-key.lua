return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function() -- This is the function that runs, AFTER loading
		require("which-key").setup()

		-- Document existing key chains
		require("which-key").add({
			{ "<leader>e", desc = "File Tree Toggle", mode = { "n", "v" } },
			{ "<leader>p", desc = "Telescope", mode = { "n", "v" } },
			{ "<leader>pw", desc = "Search", mode = "n" },
			{ "<leader>pW", desc = "Search Selected", mode = { "v", "n" } },
			{ "<leader>gf", mode = "n" },
			{ "<leader>g", desc = "Git Sign", mode = { "n", "v" } },
			{ "<leader>d", desc = "Debugger", mode = { "n", "v" } },
		})
	end,
}
