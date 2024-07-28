return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.golangci_lint,    -- go
        null_ls.builtins.diagnostics.eslint_d,         -- javascript
        null_ls.builtins.formatting.black,             -- python
        null_ls.builtins.formatting.isort,             -- python
        null_ls.builtins.formatting.prettier,          -- javascript
        null_ls.builtins.formatting.stylua,            -- lua
        null_ls.builtins.formatting.gofmt,             -- go
        null_ls.builtins.formatting.gofumpt,           -- go
        null_ls.builtins.formatting.goimports,         -- go
        null_ls.builtins.formatting.goimports_reviser, -- go
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
