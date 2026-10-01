-- blink.cmp
return function(p)
  local menu = p.bg_float
  return {
    BlinkCmpMenu = { fg = p.fg, bg = menu },
    BlinkCmpMenuBorder = { fg = p.muted, bg = menu },
    BlinkCmpMenuSelection = { bg = p.selection, bold = true },
    BlinkCmpScrollBarThumb = { bg = p.muted },
    BlinkCmpScrollBarGutter = { bg = menu },
    BlinkCmpLabel = { fg = p.fg },
    BlinkCmpLabelMatch = { fg = p.accent, bold = true },
    BlinkCmpLabelDeprecated = { fg = p.comment, strikethrough = true },
    BlinkCmpLabelDetail = { fg = p.comment },
    BlinkCmpLabelDescription = { fg = p.comment },
    BlinkCmpKind = { fg = p.keyword },
    BlinkCmpSource = { fg = p.comment },
    BlinkCmpGhostText = { fg = p.comment, italic = true },
    BlinkCmpDoc = { fg = p.fg, bg = menu },
    BlinkCmpDocBorder = { fg = p.muted, bg = menu },
    BlinkCmpDocSeparator = { fg = p.muted, bg = menu },
    BlinkCmpDocCursorLine = { bg = p.selection },
    BlinkCmpSignatureHelp = { fg = p.fg, bg = menu },
    BlinkCmpSignatureHelpBorder = { fg = p.muted, bg = menu },
    BlinkCmpSignatureHelpActiveParameter = { fg = p.accent, bold = true },
  }
end
