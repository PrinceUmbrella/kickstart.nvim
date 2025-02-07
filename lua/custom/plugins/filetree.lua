return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup {}
    
    -- Define mappings for all modes
    vim.keymap.set('n', 'ntc', ':Neotree close<CR>', { silent = true }) -- Normal mode
    vim.keymap.set('v', 'ntc', '<ESC>:Neotree close<CR>', { silent = true }) -- Visual mode
    
    vim.keymap.set('n', '<C-b>', ':Neotree toggle<CR>', { silent = true }) -- Normal mode
    vim.keymap.set('v', '<C-b>', '<ESC>:Neotree toggle<CR>', { silent = true }) -- Visual mode

    vim.keymap.set('n', 'nto', ':Neotree show<CR>', { silent = true }) -- Normal mode
    vim.keymap.set('v', 'nto', '<ESC>:Neotree show<CR>', { silent = true }) -- Visual mode
  end,
}
