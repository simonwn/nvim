---@type vim.lsp.Config
return {
  cmd = { '/Users/simon/dev/language-servers/elixir-ls/build/language_server.sh' },
  root_markers = { 'mix.exs', '.git' },
  filetypes = { 'elixir', 'eelixir', 'heex', 'ex', 'exs' },
}

