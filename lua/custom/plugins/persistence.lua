return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
    branch = false,
  },
  keys = {
    {
      '<leader>lc',
      function()
        require('persistence').load()
      end,
      desc = '[L]oad session for [c]urrent directory',
    },
    {
      '<leader>ls',
      function()
        require('persistence').select()
      end,
      desc = '[S]elect a session to [l]oad',
    },
    {
      '<leader>ll',
      function()
        require('persistence').load { last = true }
      end,
      desc = '[L]oad the [l]ast session',
    },
    {
      '<leader>ld',
      function()
        require('persistence').stop()
      end,
      desc = 'Stop persistence',
    },
  },
}
