-- Disable inline hints from lsp
vim.keymap.set("n", "<leader>ch", function()
  vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })
end, { desc = "Toggle LSP Inlay Hints" })

return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "ts_ls",
        "pyright",
        "tailwindcss",
        "rust_analyzer",
        "clangd",
        "jdtls",
        "intelephense",
        "html",
        "cssls",
        "bashls",
      },
      automatic_installation = true,
    },
  },
}
