return {
  "nyoom-engineering/oxocarbon.nvim",
  priority = 1000,
  config = function()
    -- Check if transparency is required
    local transparent = false -- set to true if you would like to enable transparency

    -- Apply the colorscheme
    vim.cmd("colorscheme oxocarbon")

    -- Apply transparency settings
    if transparent then
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end

    -- Custom highlights (adjust as needed)
    vim.api.nvim_set_hl(0, "Normal", { bg = transparent and "none" or "#161616", fg = "#f2f4f8" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = transparent and "none" or "#0f0f0f" })
    vim.api.nvim_set_hl(0, "Visual", { bg = "#333333" })
    vim.api.nvim_set_hl(0, "Search", { bg = "#3d3d3d" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#262626" })
    vim.api.nvim_set_hl(0, "StatusLine", { bg = transparent and "none" or "#0f0f0f", fg = "#f2f4f8" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = transparent and "none" or "#0f0f0f", fg = "#8c8c8c" })
  end,
}
