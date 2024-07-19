vim.g.node_host_prog = vim.fn.expand "~/.nvm/versions/node/v20.13.1/bin/node"

vim.cmd [[
  let $PATH = expand('~/.nvm/versions/node/v20.13.1/bin:') . $PATH
]]

local lint = require "lint"

lint.linters_by_ft = {
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  javascriptreact = { "eslint_d" },
  typescriptreact = { "eslint_d" },
  python = { "pylint" },
  go = { "golangcilint" },
}

local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "InsertLeave" }, {
  group = lint_augroup,
  callback = function()
    lint.try_lint()
  end,
})
