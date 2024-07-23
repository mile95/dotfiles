require("plugins")
require("keymap")

vim.cmd("language en_US") -- set language to english

vim.cmd("colorscheme apprentice") -- set color theme
vim.wo.relativenumber = true -- use relative numbers
vim.opt.tabstop = 2 -- set tab size to 2 spaces
vim.opt.shiftwidth = 2 -- set tab size to 2 spaces
vim.opt.expandtab = true -- set tab size to 2 spaces
vim.bo.softtabstop = 2 -- set tab size to 2 spaces

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Set transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "NonText", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "Folded", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none", ctermbg = "none" })

-- Ensure that other relevant highlight groups are also transparent
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "VertSplit", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "TabLine", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "none", ctermbg = "none" })


-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

