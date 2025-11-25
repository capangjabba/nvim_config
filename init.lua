-- init.lua
-- Neovim configuration converted from vimrc
-- NVIM v0.11.5

local opt = vim.opt
local g = vim.g

-- Disable compatibility with vi
vim.cmd('set nocompatible') -- Not needed in Neovim, but harmless

-- Disable mouse
opt.mouse = ""

-- Enable filetype detection, plugins, and indent
vim.cmd [[
  filetype on
  filetype plugin on
  filetype indent on
]]

-- Syntax highlighting and colors
vim.cmd('syntax on')
vim.cmd('colorscheme default')
opt.background = 'dark'

-- Indentation and tabs
opt.tabstop = 4
opt.autoindent = true

-- No backup files
opt.backup = false

-- Line numbers: hybrid (absolute current, relative others)
opt.number = true
opt.relativenumber = true

-- Show command in bottom bar
opt.showcmd = true

-- Highlight matching parentheses
opt.showmatch = true

-- Case-insensitive searching unless capital letter used
opt.ignorecase = true
opt.smartcase = true -- Optional improvement: smart case

-- Keep cursor 10 lines from top/bottom when scrolling
opt.scrolloff = 10

-- Highlight current line
opt.cursorline = true

-- Remove underline from cursorline and style line number
vim.cmd [[
  highlight clear CursorLine
  highlight CursorLineNR ctermbg=4 ctermfg=15
  highlight LineNr ctermfg=8
]]

-- Enable wildmenu for command-line completion
opt.wildmenu = true

-- Status line configuration
opt.laststatus = 2

opt.statusline = ""
-- Left side
opt.statusline:append("%F")   -- Full path
opt.statusline:append(" %M")  -- Modified flag
opt.statusline:append(" %Y")  -- Filetype
opt.statusline:append(" %R")  -- Readonly flag

-- Divider
opt.statusline:append("%=")

-- Right side
opt.statusline:append(" ascii: %b ")   -- ASCII/Unicode value
opt.statusline:append("row: %l ")      -- Line number
opt.statusline:append("col: %c ")      -- Column number

if vim.fn.has('termguicolors') == 1 then
  opt.termguicolors = true
end

-- REMAP
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

require("config.lazy")

-- REMAP telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fs',builtin.grep_string, { desc = 'Telescope grep file' })

