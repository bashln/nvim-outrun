-- telescope.nvim
return function(p)
  return {
    TelescopeNormal = { fg = p.fg, bg = p.bg_float },
    TelescopeBorder = { fg = p.muted, bg = p.bg_float },
    TelescopeTitle = { fg = p.accent, bold = true },
    TelescopePromptNormal = { fg = p.fg, bg = p.bg_alt },
    TelescopePromptPrefix = { fg = p.accent },
    TelescopePromptBorder = { fg = p.muted, bg = p.bg_alt },
    TelescopePromptTitle = { fg = p.bg, bg = p.accent, bold = true },
    TelescopeResultsNormal = { fg = p.fg, bg = p.bg_float },
    TelescopeResultsBorder = { fg = p.muted, bg = p.bg_float },
    TelescopeResultsTitle = { fg = p.accent, bg = p.bg_float },
    TelescopePreviewNormal = { fg = p.fg, bg = p.bg_float },
    TelescopePreviewBorder = { fg = p.muted, bg = p.bg_float },
    TelescopePreviewTitle = { fg = p.bg, bg = p.accent },
    TelescopeSelection = { bg = p.selection, bold = true },
    TelescopeSelectionCaret = { fg = p.accent },
    TelescopeMultiSelection = { bg = p.pmenu_sel },
    TelescopeMatching = { fg = p.accent, bold = true },
    TelescopeResultsDiffAdd = { fg = p.green },
    TelescopeResultsDiffDelete = { fg = p.red },
    TelescopeResultsDiffChange = { fg = p.yellow },
  }
end
