require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "cpp", "python", "vim", "vimdoc", "query", "markdown", "markdown_inline", "bash"},
  sync_install = false,
  auto_install = true,
  additional_vim_regex_highlighting = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}
