local utils = require('utils')

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = false,
        -- delay update diagnostics
        update_in_insert = false,
      }
    )

vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]

utils.map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {noremap = true, silent = true }) -- goto def
utils.map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', {noremap = true, silent = true }) -- goto declaration
utils.map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {noremap = true, silent = true }) -- show references
utils.map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', {noremap = true, silent = true }) -- goto implementation
utils.map('n', '<space>ca', ':Lspsaga code_action<cr>', {noremap = true, silent = true }) -- code action
--utils.map('n', 'K', ':Lspsaga hover_doc<cr>', {noremap = true, silent = true }) -- display docs
utils.map('n', 'gh', ':Lspsaga signature_help<cr>', {noremap = true, silent = true}) -- display function signature help
utils.map('n', '<space>rn', ':Lspsaga rename<cr>', {noremap = true, silent = true}) -- rename
