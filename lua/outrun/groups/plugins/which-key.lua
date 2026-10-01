-- which-key.nvim
return function(p)
  return {
    WhichKey = { fg = p.accent },
    WhichKeyGroup = { fg = p.blue },
    WhichKeyDesc = { fg = p.fg },
    WhichKeySeparator = { fg = p.comment },
    WhichKeyFloat = { bg = p.bg_float },
    WhichKeyBorder = { fg = p.muted, bg = p.bg_float },
    WhichKeyValue = { fg = p.comment },
    WhichKeyIcon = { fg = p.accent },
    WhichKeyTitle = { fg = p.accent, bold = true },
    WhichKeyNormal = { fg = p.fg, bg = p.bg_float },
  }
end
