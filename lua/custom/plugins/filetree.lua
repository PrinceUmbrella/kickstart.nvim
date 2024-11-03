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
    vim.keymap.set('i', 'ntc', '<ESC>:Neotree close<CR>', { silent = true }) -- Insert mode
    vim.keymap.set('v', 'ntc', '<ESC>:Neotree close<CR>', { silent = true }) -- Visual mode
    
    vim.keymap.set('n', 'nto', ':Neotree open<CR>', { silent = true }) -- Normal mode
    vim.keymap.set('i', 'nto', '<ESC>:Neotree open<CR>', { silent = true }) -- Insert mode
    vim.keymap.set('v', 'nto', '<ESC>:Neotree open<CR>', { silent = true }) -- Visual mode
  end,
}
