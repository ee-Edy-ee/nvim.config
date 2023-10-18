if not vim.g.vscode then
    return {{
        -- Theme inspired by Atom
        'navarasu/onedark.nvim',
        priority = 999,
        config = function()
          vim.cmd.colorscheme 'onedark'
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
