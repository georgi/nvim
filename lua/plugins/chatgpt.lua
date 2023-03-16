return {
  {
    "jackMort/ChatGPT.nvim",
    lazy = false,
    keys = {
      { "<leader>rc", "<CMD>ChatGPTCompleteCode<CR>", "Complete Code With GPT" },
      { "<leader>rr", "<CMD>ChatGPT<CR>", "Run Chat" },
      { "<leader>ra", "<CMD>ChatGPTActAs<CR>", "Act as GPT" },
      { "<leader>re", "<CMD>ChatGPTEditWithInstructions<CR>", "Edit with GPT" },
    },
    config = function()
      require("chatgpt").setup({
        -- optional configuration
      })
    end,
  },
}
