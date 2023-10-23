if vim.g.neovide then
    vim.g.neovide_scale_factor = 0.7
    vim.o.guifont = "Iosevka SS04 Extended"
  
    local change_scale_factor = function(delta)
      vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end

    vim.keymap.set("n", "<C-=>", function()
      change_scale_factor(1.5)
    end)

    vim.keymap.set("n", "<C-->", function()
      change_scale_factor(1/1.5)
    end)
end
  
return {}