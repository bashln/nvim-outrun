-- mason.nvim
return function(p)
  return {
    MasonNormal = { fg = p.fg, bg = p.bg_float },
    MasonHeader = { fg = p.bg, bg = p.accent, bold = true },
    MasonHeaderSecondary = { fg = p.bg, bg = p.blue, bold = true },
    MasonHighlight = { fg = p.accent },
    MasonHighlightBlock = { fg = p.bg, bg = p.accent },
    MasonHighlightBlockBold = { fg = p.bg, bg = p.accent, bold = true },
    MasonHighlightSecondary = { fg = p.blue },
    MasonHighlightBlockSecondary = { fg = p.bg, bg = p.blue },
    MasonMuted = { fg = p.comment },
    MasonMutedBlock = { fg = p.fg, bg = p.bg_alt },
    MasonError = { fg = p.error },
    MasonWarning = { fg = p.warn },
  }
end
