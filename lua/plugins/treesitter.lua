return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      refactor = {
        smart_rename = {
          enable = true,
          keymaps = {
            smart_rename = "grr",
          },
        },
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ab"] = "@block.outer",
            ["ib"] = "@block.inner",
            ["ac"] = "@call.outer",
            ["ic"] = "@call.inner",
          },
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>a"] = "@parameter.inner",
          },
          swap_previous = {
            ["<leader>A"] = "@parameter.inner",
          },
        },
      },
    },
  },
  "nvim-treesitter/nvim-treesitter-context",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "nvim-treesitter/nvim-treesitter-refactor",
}
