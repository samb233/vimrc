-- 基础配置
require('basic')

-- 快捷键映射
require("keybindings")

-- Packer 插件管理
require("plugins")

-- 主题设置
require("colorscheme")

-- 插件配置
require("plugin.nvim-tree")
require("plugin.bufferline")
require("plugin.catppuccin")
require("plugin.lualine")
require("plugin.telescope")
require("plugin.nvim-treesitter")
require("plugin.nvim-autopairs")

require('Comment').setup()
