return {
  'samharju/yeet.nvim',
  dependencies = {
    'stevearc/dressing.nvim', -- optional, provides sane UX
  },
  version = '*', -- update only on releases
  cmd = 'Yeet',
  opts = {
    interrupt_before_yeet = true,
  },
  keys = {
    -- Pop command cache open
    {
      '<leader><BS>',
      function()
        require('yeet').list_cmd()
      end,
    },
    -- Open target selection
    {
      '<leader>yt',
      function()
        require('yeet').select_target()
      end,
    },
    -- Douple tap \ to yeet at something
    {
      '\\\\',
      function()
        require('yeet').execute()
      end,
    },
    {
      '<leader>yo',
      function()
        require('yeet').toggle_post_write()
      end,
    },
    {
      -- Run command without clearing terminal, send C-c
      '<leader>\\',
      function()
        require('yeet').execute(nil, { clear_before_yeet = false, interrupt_before_yeet = true })
      end,
    },
  },
}
