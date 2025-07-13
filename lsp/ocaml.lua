---@brief
---
--- https://github.com/ocaml-lsp/ocaml-language-server
---
--- `ocaml-language-server` can be installed via `npm`
--- ```sh
--- npm install -g ocaml-language-server
--- ```

---@type vim.lsp.Config
return {
  cmd = { '/Users/simon/.opam/ocaml-5.3.0/bin/ocamllsp', '--stdio' },
  filetypes = { 'ocaml', 'reason' },
  root_markers = { '*.opam', 'esy.json', 'package.json' },
}
