return {
  'dhananjaylatkar/cscope_maps.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim', -- optional [for picker="telescope"]
    'ibhagwan/fzf-lua', -- optional [for picker="fzf-lua"]
    'echasnovski/mini.pick', -- optional [for picker="mini-pick"]
    'folke/snacks.nvim', -- optional [for picker="snacks"]
  },
  opts = {
    -- USE EMPTY FOR DEFAULT OPTIONS
    cscope = {
      picker = 'telescope',
      project_rooter = {
        enable = true,
        change_cwd = false,
      },
    },
  },
}
