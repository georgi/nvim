return {
  "vim-test/vim-test",
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  "junegunn/vim-easy-align",
  { "tversteeg/registers.nvim", lazy = false },
  {
    "ur4ltz/surround.nvim",
    config = function()
      require("surround").setup({ mappings_style = "surround" })
    end,
  },
  {
    "max397574/better-escape.nvim",
    lazy = false,
    config = function()
      require("better_escape").setup()
    end,
  },
}
