-- return {
--   'nvim-lualine/lualine.nvim',
--   config = function()
--     local lualine = require 'lualine'
--     local branch = { 'branch', icons_enabled = true, icon = '' }
--
--     local opts = {
--       sections = {
--         lualine_b = { branch },
--       },
--       options = {
--         section_separators = { left = '', right = '' },
--       },
--     }
--
--     lualine.setup(opts)
--   end,
-- }

return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local lualine = require 'lualine'
    local navic = require 'nvim-navic'
    local branch = { 'branch', icons_enabled = true, icon = '' }
    local current_function = {
      function()
        return navic.get_location()
      end,
      cond = function()
        return navic.is_available()
      end,
    }

    local opts = {
      sections = {
        lualine_b = { branch },
        lualine_c = { current_function }, -- Shows the current function in section C
      },
      options = {
        section_separators = { left = '', right = '' },
      },
    }

    lualine.setup(opts)
  end,
  requires = 'SmiteshP/nvim-navic',
}
