-- nvim-cmp
return function(p)
  return {
    CmpItemAbbr = { fg = p.fg },
    CmpItemAbbrMatch = { fg = p.accent, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = p.accent },
    CmpItemAbbrDeprecated = { fg = p.comment, strikethrough = true },
    CmpItemKind = { fg = p.keyword },
    CmpItemMenu = { fg = p.comment },
    CmpGhostText = { fg = p.comment, italic = true },
  }
end
