return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"antosha417/nvim-lsp-file-operations",
	},
	config = function()
		require("nvim-tree").setup({
			renderer = {
				full_name = true,
				group_empty = true,
				special_files = {},
				symlink_destination = false,
				indent_markers = {
					enable = true,
				},
				highlight_git = true,
				icons = {
					git_placement = "signcolumn",
					show = {
						file = true,
						folder = false,
						folder_arrow = false,
						git = true,
					},
					glyphs = {
						git = {
							unstaged = "U",
							staged = "S",
							unmerged = "UM",
							renamed = "R",
							deleted = "D",
							untracked = "A",
							ignored = "I",
						},
					},
				},
			},
			update_focused_file = {
				enable = true,
				update_root = true,
				ignore_list = { "help" },
			},
			diagnostics = {
				enable = true,
				show_on_dirs = true,
			},
		})

		vim.keymap.set("n", "<C-n>", ":NvimTreeFindFile<CR>", {})
	end,
}
