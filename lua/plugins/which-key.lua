return { -- Useful plugin to show you pending keybinds.
	"folke/which-key.nvim",
	event = "VimEnter", -- Sets the loading event to 'VimEnter'
	config = function() -- This is the function that runs, AFTER loading
		require("which-key").setup()

		-- Document existing key chains
		require("which-key").add({
			{ "<leader>e", desc = "Toggle Files Tree", mode = { "n", "v" } },
			{ "<leader>p", desc = "Telescope", mode = { "n", "v" } },
			{ "<leader>pf", desc = "Find Files", mode = "n" },
			{ "<leader>ps", desc = "Live Grep", mode = "n" },
			{ "<leader>pw", desc = "Search", mode = "n" },
			{ "<leader>pws", desc = "Search Current Word", mode = "n" },
			{ "<leader>pW", desc = "Search Selected", mode = { "v", "n" } },
			{ "<leader>pWs", desc = "Search Current Selected Words", mode = { "n", "v" } },
			{ "<leader>ph", desc = "Help Tags", mode = "n" },
			{ "<leader>gf", desc = "Format File", mode = "n" },
			{ "<leader>g", desc = "Git Sign", mode = { "n", "v" } },
			{ "<leader>gp", desc = "Git Preview Hunks", mode = { "n", "v" } },
			{ "<leader>gt", desc = "Git Blame Toggle", mode = { "n", "v" } },
			{ "<leader>d", desc = "Debugger", mode = { "n", "v" } },
			{ "<leader>dt", desc = "Debugging Mark", mode = "n" },
			{ "<leader>dc", desc = "Start Debugging", mode = "n" },
			{ "<A-j>", desc = "Move Line Down", mode = { "n", "v", "i" } },
      { "<A-k>", desc = "Move Line Up", mode = { "n", "v", "i" } },
		})
	end,
}
