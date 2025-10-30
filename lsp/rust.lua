---@type vim.lsp.Config
return {
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust', 'rs' },
  root_markers = { 'Cargo.toml' },
}
