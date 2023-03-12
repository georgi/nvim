return {
  {
    "jackMort/ChatGPT.nvim",
    keys = {
      { "<leader>cc", "<CMD>ChatGPTCompleteCode<CR>" },
      { "<leader>   ct", "<CMD>ChatGPT<CR>" },
      { "<leader>cv", "<CMD>ChatGPTActAs<CR>" },
      { "<leader>ce", "<CMD>ChatGPTEditWithInstructions<CR>" },
    },
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
  },
}
