-- return {
--   'nvim-lualine/lualine.nvim',
--   opts = function(_, opts)
--     local branch = { 'branch', icons_enabled = true, icon = '' }
--     opts.sections.lualine_b = { branch }
--     opts.options.section_separators = { left = '', right = '' }
--   end,
-- }

return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local lualine = require 'lualine'
    local branch = { 'branch', icons_enabled = true, icon = '' }

    local opts = {
      sections = {
        lualine_b = { branch },
      },
      options = {
        section_separators = { left = '', right = '' },
      },
    }

    lualine.setup(opts)
  end,
}
