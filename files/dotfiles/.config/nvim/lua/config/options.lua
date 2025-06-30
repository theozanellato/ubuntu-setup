-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.clipboard = "unnamed,unnamedplus"
opt.winbar = "%=%m %f"

-- Indentation settings
opt.tabstop = 4 -- Number of visual spaces per TAB
opt.softtabstop = 4 -- Number of spaces inserted/deleted by TAB/BACKSPACE
opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true -- Use spaces instead of tabs

-- Line wrapping
opt.wrap = true -- Enable line wrapping

opt.exrc = true -- Allow project-local .nvim.lua or .nvimrc
opt.secure = false -- Do not restrict unsafe commands in those files
