-- Keybindings
vim.keymap.set('n', '<F5>',         ":lua require('dap').continue()<CR>")
vim.keymap.set('n', '<F9>',        ":lua require('dap').step_over()<CR>")
vim.keymap.set('n', '<F10>',        ":lua require('dap').step_into()<CR>")
vim.keymap.set('n', '<F12>',        ":lua require('dap').step_out()<CR>")
vim.keymap.set('n', '<Leader>b',    ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set('n', '<Leader>B',    ":lua require('dap').set_breakpoint()<CR>")
vim.keymap.set('n', '<Leader>lp',   ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set('n', '<Leader>dr',   ":lua require('dap').repl.open()<CR>")
vim.keymap.set('n', '<Leader>dl',   ":lua require('dap').run_last()<CR>")
vim.keymap.set('n', '<Leader><Esc>',":lua require('dap').discontinue()<CR>")
vim.keymap.set('n', '<Leader>ui',   ":lua require('dapui').toggle()<CR>")

local dap = require('dap')

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode',
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
  },
}

dap.set_log_level('TRACE')

dap.configurations.rust = dap.configurations.cpp
dap.configurations.c = dap.configurations.cpp
