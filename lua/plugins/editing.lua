return {
  {
    "vim-test/vim-test",
    keys = {
      { "<leader>tt", ":TestNearest<CR>" },
      { "<leader>tf", ":TestFile<CR>" },
      { "<leader>ts", ":TestSuite<CR>" },
      { "<leader>tl", ":TestLast<CR>" },
      { "<leader>tv", ":TestVisit<CR>" },
    },
    config = function()
      vim.g["test#strategy"] = "neovim"
      vim.g["test#preserve_screen"] = 0
      vim.g["test#neovim#term_position"] = "horizontal"
    end,
  },
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
  {
    "xiyaowong/nvim-transparent",
    config = function()
      require("transparent").setup({
        enable = true,
        -- extra_groups = { "NvimTreeNormal", "FloatBorder" },
      })
      if not vim.g.neovide then
        require("notify").setup({
          stages = "fade",
          timeout = 3000,
          background_colour = "#000000",
          opacity = 0.8,
        })
      end
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        completion = {
          completeopt = "menu,menuone,noselect",
        },
        preselect = cmp.PreselectMode.None,
        mapping = cmp.mapping.preset.insert({
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.close(),
          ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          }),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        },
      })
    end,
  },
  { "ThePrimeagen/vim-be-good" },
}
