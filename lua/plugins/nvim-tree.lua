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
      git = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        disable_for_dirs = {},
        timeout = 2000,
        cygwin_support = false,
      },
      open_file = {
        quit_on_open = true,
        eject = true,
        resize_window = true,
        window_picker = {
          enable = true,
          picker = "default",
          chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
          exclude = {
            filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
            buftype = { "nofile", "terminal", "help" },
          },
        },
      },
    })

    vim.keymap.set("n", "<leader>e", ":NvimTreeFindFile<CR>", {})
  end,
}
