if not vim.g.vscode then
  return {{
    "nyoom-engineering/oxocarbon.nvim",
      
    priority = 999,
    config = function()
      vim.opt.background = "dark"
      vim.cmd("colorscheme oxocarbon")
    end,
  }} 
else
    return {{
      "LazyVim/LazyVim",
      config = function()
        vim.cmd [[ colorscheme "" ]]
      end,
    }}
end
