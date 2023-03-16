if vim.g.neovide then
  return {
    { "folke/noice.nvim", enabled = false },
    { "rcarriga/nvim-notify", enabled = false },
  }
else
  return {}
end
