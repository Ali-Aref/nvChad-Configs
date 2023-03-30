local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier.with {
    extra_args = { "--print-with", "100" },
    filetypes = { "html", "markdown", "css", "typescript", "typescriptreact", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
  b.formatting.isort.with { filetypes = { "python" }, },
  b.formatting.black.with {
    extra_args = { "--line-length", "80" }, filetypes = { "python" },
  },
  -- Lua
  b.formatting.stylua,
  -- Shell
  -- b.formatting.shfmt,
  -- b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- linters
  b.diagnostics.eslint_d.with {
   diagnostics_format = "#{m} eslint_d:[#{c}]", filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
  b.diagnostics.flake8.with {
   extra_args = {"--max-line-length=80", "--ignore=E4,E51,W234,BLK100,W292,W503,I001"},
   filetypes = { "python" },
   diagnostics_format = "#{m} flake8:[#{c}]",
  },
  b.diagnostics.codespell.with {
   diagnostics_format = "#{m} codespell:[#{c}]", filetypes = { "python", "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
