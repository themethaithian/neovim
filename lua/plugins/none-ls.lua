return {
  "nvimtools/none-ls.nvim",
  config = function()
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.golangci_lint, -- go
        null_ls.builtins.formatting.black,         -- python
        null_ls.builtins.formatting.isort,         -- python
        null_ls.builtins.formatting.prettier,      -- javascript
        null_ls.builtins.formatting.stylua,        -- lua
        -- null_ls.builtins.formatting.gofmt,         -- go
        null_ls.builtins.formatting.gofumpt,       -- go
        null_ls.builtins.formatting.goimports,     -- go
        null_ls.builtins.formatting.goimports_reviser, -- go
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
              -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
              vim.lsp.buf.format({ async = false })
            end,
          })
        end
      end,
    })
  end,
}
