-- Native LSP Configuration for Neovim 0.11+

-- Global defaults: Root detection (e.g., via .git)
--vim.lsp.config('*', {
--  root_markers = { '.git' },  -- Auto-detect project root
--})

-- Python (pyright) config
vim.lsp.config('pyright', {
  filetypes = { 'python' },
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = 'workspace',
      },
    },
  },
})

-- Lua (lua_ls) config
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },  -- Adjust path if needed
  filetypes = { 'lua' },
  settings = {
    Lua = {
      runtime = { version = 'LuaJIT' },
      diagnostics = { globals = { 'vim' } },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),  -- Neovim runtime libs
        checkThirdParty = false,
      },
      telemetry = { enable = false },
      hint = { enable = true },  -- Inlay hints
      format = { enable = false },  -- Use stylua for formatting
    },
  },
})

-- Enable the servers (attaches automatically on file open)
vim.lsp.enable('pyright')
vim.lsp.enable('lua_ls')

-- Optional: Global diagnostics config (nicer UI)
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = 'always',
  },
})
