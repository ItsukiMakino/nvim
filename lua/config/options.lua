local opt = vim.opt
opt.number = true
opt.title = true
opt.cmdheight = 0
opt.termguicolors = true
opt.updatetime = 100
opt.textwidth = 0
opt.signcolumn = "auto"
opt.background = "dark"
opt.clipboard = { "unnamed", "unnamedplus" }
opt.tabstop = 2
opt.expandtab = true
opt.shiftwidth = 2
opt.autoindent = true
opt.smartindent = true
opt.softtabstop = 2
opt.smarttab = true
opt.timeout = true
opt.timeoutlen = 500
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.wrapscan = true
opt.hlsearch = true
-- opt.encoding = utf-8

opt.wildignore =
  ".git,.hg,.svn,*.pyc,*.o,*.out,*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store,**/node_modules/**,**/bower_modules/**"
-- opt.fileencoding = "utf-8"
opt.termguicolors = true
-- 行を跨いで移動出来る様にする
opt.whichwrap = "b,s,h,l,[,],<,>,~"
-- undoの永続化
opt.undodir = vim.fn.stdpath("state")
opt.undofile = true
-- ファイル末尾の記号を消す
opt.fillchars:append("eob: ")
opt.helplang = { "ja", "en" }
opt.wrap = true
--fold
opt.fillchars = { fold = " " }
opt.foldmethod = "indent"
opt.foldenable = false
opt.foldlevel = 99
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
--マウスの設定
