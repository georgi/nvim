return {
  {
    "jackMort/ChatGPT.nvim",
    keys = {
      { "<leader>cgt", "<CMD>ChatGPT<CR>" },
      { "<leader>cga", "<CMD>ChatGPTActAs<CR>" },
      { "<leader>cge", "<CMD>ChatGPTEditWithInstructions<CR>" },
    },
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
  },
}
